angular.module('goatApp').factory('friends',['$http', function($http){

  var o = {
    friends: []
  };

  o.getAll = function() {
    return $http.get('/friends').success(function(data){
      angular.copy(data, o.friends);
    });
  };

  o.create = function(friend) {
    return $http.post('/friends', friend).success(function(data){
      console.log(data)
      o.friends.push(data);
    });
  };

  return o;
}]);
