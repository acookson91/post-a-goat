angular.module('goatApp').factory('bombs',['$http', function($http){

  var o = {};

  o.create = function(friend) {
    console.log(friend)
    return $http.post('/friends/' + friend + '/goatbombs.json' ).success(function(data){
      console.log(data)
    });
  };

  // o.message = function(message) {
  //   console.log(message);
  //   $('.message').val(message);
  // }

  return o;
}]);
