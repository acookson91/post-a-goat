angular.module('goatApp').factory('bombs',['$http', function($http){

  var o = {};

  o.create = function(friend) {
    return $http.post('/friends/' + friend + '/goatbombs.json' ).success(function(data){
    });
  };

  return o;
}]);
