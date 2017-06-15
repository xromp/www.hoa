<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;
use DB;

use App\Expense;
use App\Expense_line;


class ExpenseController extends Controller
{
    public function index()
    {
    	return view('expense.index');
    }
    public function get(Request $request)
    {
    	$formData = array(
    		'orno'=> $request-> input('orno')
    	);

        $expense = DB::table('expense')
            ->select ('expenseid','orno','ordate','expense_category.description as category','amount','posted','deleted','expense.created_at')
            -> leftjoin('expense_category','expense_category.code','=','expense.category')
            -> where('deleted',0);

        if ($formData['orno']) {
            $expense -> where('orno',$formData['orno']);            
        }
        $expense = $expense->get();

        return response()-> json([
            'status'=>200,
            'data'=>$expense,
            'message'=>''
        ]);
    }

    public function create(Request $request)
    {
        $message = '';

        $validator = Validator::make($request->all(),[
            'amount'=> 'required',
            'category'=> 'required',
            'entityvalues'=> 'required',
            'ordate'=> 'required',
            'orno'=> 'required',
        ]);

        if ($validator-> fails()) {
            return response()->json([
                'status'=> 403,
                'data'=>'',
                'message'=>'Unable to save.'
            ]);

        } else {
            $expense = new Expense;
            $expenses_line = new Expense_line;

            $data = array();
            $data['orno']           = $request-> input('orno');
            $data['ordate']         = $request-> input('ordate');
            $data['category']       = $request-> input('category');
            $data['amount']         = $request-> input('amount');
            $data['entityvalues']   = $request-> input('entityvalues');
            $data['remarks']        = $request-> input('remarks');

            $isOrnoExist = $expense
                        -> where('orno','=',$data['orno'])
                        -> where('deleted',0)
                        -> first();

            if ($isOrnoExist) {
                return response()->json([
                    'status'=> 403,
                    'data'=>'',
                    'message'=>"OR no. {$data['orno']} is already exists."
                ]);         
            } else {
                // saving collections
                DB::transaction(function($data) use($data){
                    // dd($data['orno']);
                    $expense = new Expense;
                    
                    $expense->orno      = $data['orno'];
                    $expense->ordate    = $data['ordate'];
                    $expense->category  = $data['category'];
                    $expense->amount    = $data['amount'];
                    $expense->remarks   = $data['remarks'];
                    
                    $expense->save();

                    if($expense->id)
                    {
                        foreach ($data['entityvalues'] as $key => $entityvalue) {
                            $expense_line = new Expense_line;

                            $expense_line->expenseid = $expense->id;
                            $expense_line->entityvalue1 = $entityvalue['entityvalue1'];
                            $expense_line->entityvalue2 = $entityvalue['entityvalue2'];
                            $expense_line->entityvalue3 = $entityvalue['entityvalue3'];
                            $expense_line->save();

                            if (!$expense_line->id) {
                                throw new \Exception('Expense line not created.');
                            }
                        } 
                    }
                    else 
                    {
                        throw new \Exception('Expense not created.');
                    }
                });

            }

            return response()->json([
                'status'=> 200,
                'data'=>'',
                'message'=>'Successfully saved.'
            ]);         
        }    
    }

    public function delete(Request $request)
    {
        $formData = array(
            'orno'=> $request-> input('orno')
        );

        $isORNoExist = DB::table('transaction')
            -> where('refid',$formData['orno'])
            -> first();

        if ($isORNoExist) {

            if ($isORNoExist->posted) {
                return response() -> json([
                    'status'=>403,
                    'data'=>'',
                    'message'=>"OR no. {$isORNoExist->refid} is already posted."
                ]);
            }
        }

        DB::transaction(function($formData) use($formData){
            DB::table('expense')
                -> where('orno',$formData['orno'])
                -> update(['deleted'=>1]);
        });

        return response() -> json([
            'status'=>200,
            'data'=>'',
            'message'=>"Successfully deleted."
        ]);
    }
}
