@DogAppearances = new Mongo.Collection('dogAppearances')

DogAppearances.attachSchema(new SimpleSchema(
	color:
		type: String
		label: 'Färg'
		optional: true
	coat:
		type: String
		label: 'Päls'
		optional: true
	variant:
		type: String
		label: 'Variant'
		optional: true
	tail:
		type: String
		label: 'Svans'
		optional: true
	height:
		type: String
		label: 'Höjd'
		optional: true
	weight:
		type: Number
		label: 'Vikt'
		optional: true
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
	dogId: 
		type: String
		autoform:
			type: 'hidden'
))



# isNutered:
#    label: 'Kastrerad'
#    type: String
#    allowedValues: ['Ja', 'Nej']
#    optional: true
#    autoform:
#      type: 'select-radio'
