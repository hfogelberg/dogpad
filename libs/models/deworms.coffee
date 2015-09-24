@Deworms = new Mongo.Collection('deworms')

Deworms.attachSchema(new SimpleSchema(
	dewormDate:
		label: 'Datum'
		type: Date
		optional: true
	medication:
		label: 'Medel'
		type: String
		optional: true
	amount:
		label: 'Dos'
		type: String
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