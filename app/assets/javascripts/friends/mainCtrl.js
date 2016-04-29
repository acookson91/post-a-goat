angular.module('goatApp').controller('MainCtrl', ['$scope', 'friends', 'bombs', '$timeout', function($scope, friends, bombs, $timeout){

  $scope.friends = friends.friends;
  $scope.AlertMessage = false;

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
    bombs.create(friend).then(function(){
      $scope.AlertMessage=true;
      $timeout(function () { $scope.AlertMessage = false; }, 3000);
    }, function() {
      alertTimeout()
    });
  };

}]);

function alertTimeout(){
  alert('Your Goat is still in the pen!');
}
