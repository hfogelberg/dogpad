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
