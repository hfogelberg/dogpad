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

	@route 'changeDog',
		template: 'changeDog',
		path: '/changeDog/:name/:dogId'
		onBeforeAction: ->
			Session.set 'dogId', @params.dogId
			this.next()
		data: dog: ->
			Dogs.findOne({_id: Session.get('dogId')})

	@route 'dog',
		template: 'dog',
		path: 'dog/:name/:dogId'
		onBeforeAction: ->
			Session.set 'dogId', @params.dogId
			this.next()
		waitOn: ->
			@subscribe 'getMyDogs', Session.get('user')
		data: dog: ->
			Dogs.findOne({_id: Session.get('dogId')})

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

	@route 'changeIdentity',
		template: 'changeIdentity',
		path: '/changeIdentity/:dogId'
		onBeforeAction: ->
			Session.set 'dogId', @params.dogId
			this.next()
		waitOn: ->
			@subscribe 'getIdentity', @params.dogId
		data: identity: ->
			DogIdentities.findOne({dogId: Session.get('dogId')})

	@route 'appearance',
		template: 'appearance',
		path: '/appearance/:name/:dogId'
		onBeforeAction: ->
			Session.set 'dogId', @params.dogId
			this.next()
		waitOn: ->
			@subscribe 'getAppearance', @params.dogId
		data: appearance: ->
			DogAppearances.findOne()

	@route 'changeAppearance',
		template: 'changeAppearance',
		path: '/changeAppearance/:dogId'
		onBeforeAction: ->
			Session.set 'dogId', @params.dogId
			this.next()
		waitOn: ->
			@subscribe 'getAppearance', @params.dogId
		data: appearance: ->
			DogAppearances.findOne()

	@route 'insurance',
		template: 'insurance',
		path: '/insurance/:name/:dogId'
		onBeforeAction: ->
			Session.set 'dogId', @params.dogId
			this.next()
		waitOn: ->
			@subscribe 'getInsurance', @params.dogId
		data: insurance : ->
			DogInsurances.findOne()

	@route 'changeInsurance',
	template: 'changeInsurance',
	path: 'changeInsurance/:dogId'
	onBeforeAction: ->
			Session.set 'dogId', @params.dogId
			this.next()
	waitOn: ->
		@subscribe 'getInsurance', @params.dogId
	data: insurance : ->
		DogInsurances.findOne()

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

	@route 'contacts',
		template: 'contacts',
		path: '/contacts'
		waitOn: ->
			@subscribe 'getContactsForUser', Session.get 'user'
		data: contacts: ->
			Contacts.find()


