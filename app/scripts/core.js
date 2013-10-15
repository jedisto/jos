'use strict';

if(typeof angular !== 'undefined') {
	angular.module('jos.core', []);
	angular.module('jos.core').controller('menu', ['$scope', function($scope){
		var win = chrome.app.window.current();
		$scope.minimize = function() {
			win.minimize();
		};
		$scope.fullscreen = function() {
			if(win.isFullscreen()) {
				win.restore();
			} else {
				win.fullscreen();
			}
		};
		$scope.quit = function() {
			win.close();
		};
	}]);
}