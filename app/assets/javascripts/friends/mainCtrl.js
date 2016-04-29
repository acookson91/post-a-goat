angular.module('goatApp').controller('MainCtrl', ['$scope', 'friends', 'bombs', '$timeout', function($scope, friends, bombs, $timeout){

  $scope.friends = friends.friends;
  $scope.AlertMessage = true;

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
    bombs.create(friend);
    $scope.AlertMessage=false;
    $timeout(function () { $scope.AlertMessage = true; }, 3000);
  }

}]);
