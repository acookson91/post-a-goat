angular.module('goatApp').controller('MainCtrl', ['$scope', 'friends', function($scope, friends){

  $scope.friends = friends.friends;

  $scope.addFriend = function(){
    if(!$scope.name || $scope.phone_number === '') {return;}
    friends.create({
      name: $scope.name,
      phone_number: $scope.phone_number,
    });
    $scope.name = '';
    $scope.phone_number ='';
  };
}]);
