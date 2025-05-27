var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
    $http.get("norway.json")
    .then(function(response) {
        $scope.norway = response.data; // Correctly assign the array
        console.log($scope.norway); // Log the data to verify
    }, function(response) {
        console.error("Error loading JSON:", response); // Log error details
        $scope.norway = []; // Set an empty array to avoid further issues
    });
});

var now = new Date();
var datetime = now.toLocaleString();

document.getElementById("datetime").innerHTML = datetime;
document.getElementById("datetime").style.color = "gray";