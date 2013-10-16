'use strict';
/**
 * Listens for the app launching then creates the window
 *
 * @see http://developer.chrome.com/trunk/apps/experimental.app.html
 * @see http://developer.chrome.com/trunk/apps/app.window.html
 */
chrome.app.runtime.onLaunched.addListener(function() {
    chrome.app.window.create('index.html', {
    	bounds: {
	        width: 800,
	        height: 600
	    },
	    minWidth: 320,
	    minHeight: 480,
        frame: 'none'
    });
});
