Template.vaccinations.events
  "click .addVaccinationBtn": (event) ->
  	console.log 'addVaccinationBtn clicked'
  	event.preventDefault
  	$('.ui.modal.vaccinationModal').modal('show')