Template.menu.rendered = ->
  $('.ui.dropdown').dropdown()

Template.menu.events
	'click .newContactBtn': (event) ->
		console.log 'newContactBtn clicked'
		event.preventDefault()
		$('.newContactModal').modal('show')