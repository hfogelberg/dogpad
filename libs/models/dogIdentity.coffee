@DogIdentities = new Mongo.Collection('dogIdentities')

DogIdentities.attachSchema(new SimpleSchema(
	passport:
		type: String
		label: 'Passport'
		optional: true
	chip:
		type: String
		label: 'Chip'
		optional: true
	registration:
		type: String
		label: 'Registration'
		optional: true
	comment:
		type: String
		label: 'Comment'
		optional: true
	createdAt:
		type: Date
		autoValue: -> 
			if this.isInsert
				new Date()
	updatedAt:
		type: Date
		autoValue: -> new Date()
	user:
		type: String
		autoValue: -> this.userId
		autoform:
			type: 'hidden'
	dogId:
		type: String
		label: 'dogId'
		optional: true
		autoform:
			type: 'hidden'
))
