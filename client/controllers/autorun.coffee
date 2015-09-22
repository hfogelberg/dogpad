Meteor.autorun ->
	if Meteor.userId
		console.log 'Autorun. User id is' + Meteor.userId()
		Session.set 'user', Meteor.userId()
		console.log 'User session set to ' + Session.get 'user'