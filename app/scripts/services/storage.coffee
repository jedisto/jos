angular.module('jos.core').service 'storage', ['$rootScope', ($rootScope) ->
	chrome.identity.getAuthToken interactive: true, (token) ->
		console.log token
]
