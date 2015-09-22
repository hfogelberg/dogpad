dogIdHook = before: insert: (doc) ->
	doc.dogId = Session.get('dogId')
	return doc
	
AutoForm.addHooks 'insertIdentityForm', dogIdHook

AutoForm.addHooks 'insertAppearanceForm', dogIdHook

AutoForm.addHooks 'insertInsuranceForm', dogIdHook