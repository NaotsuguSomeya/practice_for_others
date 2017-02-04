angular.module('myapp', [])
    .controller('MainController', ['$scope', function($scope) {
        $scope.users = [
            {"name":"よっちゃん", "score":52.22},
            {"name":"さくちゃん", "score":38.22},
            {"name":"u-chan", "score":11.11}
        ];
				$scope.users2 = [
            {"name":"よっちゃん1", "score":52.22},
            {"name":"さくちゃん1", "score":38.22},
						{"name":"u-chan1", "score":11.11},
						{"name":"よっちゃん2", "score":52.22*2},
						{"name":"さくちゃん2", "score":38.22*2},
						{"name":"u-chan2", "score":11.11*2},
						{"name":"よっちゃん3", "score":52.22*3},
						{"name":"さくちゃん3", "score":38.22*3},
						{"name":"u-chan3", "score":11.11*3}
        ];
				$scope.today = new Date();
				$scope.addUser = function (){
					// 処理
				}
    }])
		.controller('UserItemController', ['$scope', function($scope) {
        $scope.increment = function() {
            $scope.user.score++;
        };
    }]);
