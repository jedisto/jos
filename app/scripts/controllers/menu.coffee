angular.module('jos.core').controller 'menu', ['$scope', 'storage', ($scope, storage) ->
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
]
