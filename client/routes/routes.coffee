Router.configure
  layoutTemplate: 'layout'
  notFoundTemplate: 'not-found'

Router.map ->
	@route 'home',
		template: 'home',
		path: '/'

	@route 'newDog',
		template: 'newDog',
		path: 'newDog'
		onBeforeAction: ->
			console.log 'New Dog'
			this.next()	

	@route 'identity',
		template: 'identity',
		path: '/identity/:name/:dogId'
		onBeforeAction: ->
			Session.set 'dogId', @params.dogId
			this.next()
		waitOn: ->
			@subscribe 'getIdentity', @params.dogId
		data: identity: ->
			DogIdentities.findOne()
			#{'dogId': Session.get('dogId')})
