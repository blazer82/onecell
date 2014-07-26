# Home Controller

This file will hold all the client side controller logic for the home page.

### Events
We will need an event for the 'learn more' button to lead to the about page.

	Template.home.events
		"click .jumbotron .btn-primary": ->
			Router.go "about"