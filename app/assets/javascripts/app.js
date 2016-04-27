var app = angular.module('goatApp', ['ui.router']);

app.config(function($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: '/home.html',
      controller: 'MainCtrl'
    });
  $urlRouterProvider.otherwise('home');
})

app.controller('MainCtrl', ['$scope', 'friends', function($scope, friends){

  $scope.friends = friends.friends;

  $scope.addFriend = function(){
    if(!$scope.name || $scope.phone_number === '') {return;}
    $scope.friends.push({name: $scope.name, phone_number: $scope.phone_number});
    $scope.name = '';
    $scope.phone_number ='';
  };
}]);

app.factory('friends', [function(){

  var o = {
    friends: []
  };
  return o;
}])
