# Routes

Here's where we define our iron-router routes.

First, we're gonna set some global configuration parameters.

	Router.configure
		layoutTemplate: "main"

And now the seperate routes.

	Router.map ->

		@route "home",
			path: "/"

		@route "proposals",
			path: "/p"

		@route "about",
			path: "about"