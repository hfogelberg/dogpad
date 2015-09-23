@Vaccinations = new Mongo.Collection('vaccinations')

Vaccinations.attachSchema(new SimpleSchema(
  vaccDate:
    label: 'Datum'
    type: Date
    optional: true
  vaccine:
    label: 'Medel'
    type: String
    optional: true
  amount:
    label: 'Dos'
    type: Number
    optional: true
  contact: 
    label: 'Veterinär'
    type: String
    optional: true
  cost:
    label: 'Kostnad'
    type: Number
    optional: true
  comment:
    label: 'Kommentar'
    type: String
    optional: true
  reminderDate:
    label: 'Påminnelse'
    type: Date
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
    label: 'dogId'
    optional: true
    autoform:
      type: 'hidden'
))
  