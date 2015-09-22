@DogInsurances = new Mongo.Collection('dogInsurances')

DogInsurances.attachSchema(new SimpleSchema(
  company:
    type: String
    label: 'Bolag'
    optional: true
  product:
    type: String
    label: 'Produkt'
    optional: true
  price:
    type: Number
    label: 'Premie'
    optional: true
  life:
    type: Number
    label: 'Livbelopp'
    optional: true
  vet:
    type: Number
    label: 'Vet. belopp'
    optional: true
  fromDate:
    type: Date
    label: 'From. dat'
    optional: true
  toDate:
    type: Date
    label: 'Tom. dat'
    optional: true
  insuranceNumber:
    type: String
    label: 'Försäkringsnr'
    optional: true
  policyTaker:
    type: String
    label: 'Står i namn'
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