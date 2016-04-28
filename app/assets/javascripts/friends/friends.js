angular.module('goatApp').factory('friends', '$http', [function($http){

  var o = {
    friends: []
  };

  o.getAll = function() {
    return $http.get('/friends').success(function(data){
      angular.copy(data, o.friends);
    });
  };

  o.create = function(friend) {
    return $http.post('/friends.json', friend).success(function(data){
      o.friends.push(data);
    });
  };

  return o;
}]);
