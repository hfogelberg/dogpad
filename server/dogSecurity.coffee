Dogs.allow
	insert: (userId, doc) ->
		true
	remove: ->
		true
	update: ->
		true

DogIdentities.allow
	insert: (doc) ->
		true
	remove: ->
		true
	update: ->
		true

DogAppearances.allow
	insert: (doc) ->
		true
	remove: ->
		true
	update: ->
		true

DogInsurances.allow
	insert: (doc) ->
		true
	remove: ->
		true
	update: ->
		true

Vaccinations.allow
	insert: (doc) ->
		true
	remove: ->
		true
	update: ->
		true

Contacts.allow
	insert: (userId, doc) ->
		true
	remove: ->
		true
	update: ->
		true