angular.module('jos.core').controller 'files', [
	'$scope', '$rootScope', 'storage',
	($scope, $rootScope, storage) ->
		$scope.$watch 'isSignedIn', (isSignedIn) ->
			if isSignedIn
				storage.list (files) ->
					console.log files
					$scope.$apply ->
						$scope.files = files.items
]
