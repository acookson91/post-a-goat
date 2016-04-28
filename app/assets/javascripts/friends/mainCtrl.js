angular.module('goatApp').controller('MainCtrl', ['$scope', 'friends', 'bombs', function($scope, friends, bombs){

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

  $scope.sendMessage = function(friend){
    console.log(friend)
    bombs.create(friend);

  }

}]);
