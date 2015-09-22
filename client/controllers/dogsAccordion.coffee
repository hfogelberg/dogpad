Template.dogsAccordion.rendered = ->
	$('.accordion').accordion()

	Deps.autorun ->
		Meteor.subscribe 'getMyDogs', Session.get('user')

Template.dogsAccordion.helpers myDogs: ->
	Dogs.find()