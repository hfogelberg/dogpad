Template.contacts.events 
	'click .newContactBtn': (event) ->
		event.preventDefault
		console.log 'newContactBtn clicked'
		$('.newContactModal').modal('show')