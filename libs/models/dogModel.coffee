@Dogs = new Mongo.Collection('dogs')

Dogs.attachSchema(new SimpleSchema(
  name:
    type: String
    label: 'Namn'
    optional: false
  breed:
    type: String
    label: 'Ras'
    optional: true
  dob:
    type: Date
    label: 'Född'
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
  user:
    type: String
    autoValue: -> this.userId
    autoform:
      type: 'hidden'
))




  # gender:
  #   type: String
  #   allowedValues: ['Hona', 'Hane']
  #   label: 'Kön'
  #   optional: true
  #   autoform:
  #     type: 'select-radio'