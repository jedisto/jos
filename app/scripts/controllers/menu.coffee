angular.module('jos.core').controller 'menu', [
	'$scope', '$rootScope', 'storage',
	($scope, $rootScope, storage) ->
		win = chrome.app.window.current()
		$scope.minimize = ->
			win.minimize()

		$scope.fullscreen = ->
			if win.isFullscreen()
				win.restore()
			else
				win.fullscreen()

		$scope.quit = ->
			win.close()

		$scope.signIn = ->
			storage.auth (got) ->
				if got
					$scope.$apply ->
						$rootScope.isSignedIn = true

		$scope.signIn()
]
