angular.module('jos.core').service 'storage', ['$http', ($http) ->
	authToken = null

	auth: (cb) ->
		chrome.identity.getAuthToken interactive: false, (token) ->
			authToken = token
			cb true

	list: (cb) ->
		xhr = new XMLHttpRequest()
		xhr.open 'GET', 'https://www.googleapis.com/drive/v2/files'
		xhr.setRequestHeader 'Authorization', "Bearer #{authToken}"
		xhr.onload = ->
			cb JSON.parse xhr.responseText
		xhr.onerror = ->
			cb arguments
		xhr.send()
]
