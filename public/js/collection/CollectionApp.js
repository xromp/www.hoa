define([
  'angular'
 ],function () {
  'use strict';
    app.lazy.controller('CollectionCtrl',CollectionCtrl)

    CollectionCtrl.$inject = ['$scope', '$filter']
    function CollectionCtrl($scope, $filter){
      var vm = this;

      vm.templateUrl = 'collection.create';

      vm.addCollection = function (){
        vm.templateUrl='collection.create';
      };
    }
});