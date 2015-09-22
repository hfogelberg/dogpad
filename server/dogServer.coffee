Meteor.startup ->
	Meteor.publish 'getMyDogs', (user) ->
		console.dir 'getMyDogs. User: ' +user
		console.dir 'Dogs found: ' + Dogs.find({user: user}).count()
		Dogs.find({user: user})

	Meteor.publish 'getDog', (dogId) ->
		console.dir 'getDog: ' + dogId
		Dogs.find({id: dogId})

	Meteor.publish 'getIdentity', (dogId) ->
		console.dir 'getIdentity ' + dogId
		console.dir 'Found data: ' + DogIdentities.find({dogId: dogId}).count()
		DogIdentities.find({dogId: dogId})