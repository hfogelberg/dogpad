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
			DogIdentities.findOne({'dogId': Session.get('dogId')})

	@route 'appearance',
		template: 'appearance',
		path: '/appearance/:name/:dogId'
		onBeforeAction: ->
			Session.set 'dogId', @params.dogId
			this.next()
		waitOn: ->
			@subscribe 'getAppearance', @params.dogId
		data: appearance: ->
			DogAppearances.findOne({'dogId': Session.get('dogId')})

	@route 'insurance',
		template: 'insurance',
		path: '/insurance/:name/:dogId'
		onBeforeAction: ->
			Session.set 'dogId', @params.dogId
			this.next()
		waitOn: ->
			@subscribe 'getInsurance', @params.dogId
		data: insurance : ->
			DogInsurances.findOne({'dogId': Session.get('dogId')})

	@route 'vaccinations',
		template: 'vaccinations',
		path: '/vaccinations/:name/:dogId'
		onBeforeAction: ->
			Session.set 'dogId', @params.dogId
			this.next()
		waitOn: ->
			@subscribe 'getVaccinations', Session.get 'dogId'
		data: vaccinations: ->
			Vaccinations.find()

