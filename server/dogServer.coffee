Meteor.startup ->
	Meteor.publish 'getMyDogs', (user) ->
		console.dir 'getMyDogs. User: ' +user
		console.dir 'Dogs found: ' + Dogs.find({user: user}).count()
		Dogs.find
			user: user

	Meteor.publish 'getDog', (dogId) ->
		console.dir 'getDog: ' + dogId
		Dogs.find
			id: dogId

	Meteor.publish 'getIdentity', (dogId) ->
		console.dir 'getIdentity ' + dogId
		console.dir 'Found data: ' + DogIdentities.find({dogId: dogId}).count()
		DogIdentities.find
			dogId: dogId

	Meteor.publish 'getAppearance', (dogId) ->
		console.dir 'getAppearance ' + dogId
		console.dir 'Found data: ' + DogAppearances.find({dogId: dogId}).count()
		DogAppearances.find
			dogId: dogId

	Meteor.publish 'getInsurance', (dogId) ->
		console.dir 'getInsurance ' + dogId
		DogInsurances.find
			dogId: dogId

	Meteor.publish 'getVaccinations', (dogId) ->
		console.dir 'getVaccinations ' + dogId
		Vaccinations.find
			dogId: dogId

	Meteor.publish 'getContactsForUser', (userId) ->
		console.dir 'getContactsForUser ' + userId
		console.dir 'Contacts found '+ Contacts.find(user: userId).count()
		Contacts.find
			user: userId