@Contacts = new Mongo.Collection('contacts')

Contacts.attachSchema(new SimpleSchema(
	firstName:
		label: 'Förnamn'
		type: String
		optional: true
	lastName:
		label: 'Efternamn'
		type: String
		optional: true
	company:
		label: 'Företag'
		type: String
		optional: true
	phone:
		label: 'Telefon'
		type: String
	email:
		label: 'Epost'
		type: String
		regEx: SimpleSchema.RegEx.Email
	website:
		label: 'Web'
		type: String
	address:
		label: 'Adress'
		type: String
	comment:
		type: String
		label: 'Kommentar'
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
))