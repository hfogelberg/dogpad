identHooks = before: insert: (doc) ->
	doc.dogId = Session.get('dogId')
	return doc
	
AutoForm.addHooks 'insertIdentityForm', identHooks