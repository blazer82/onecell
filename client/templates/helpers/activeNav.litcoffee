# Handlebars helper: activeNav

The following helper will be used to determine which navigation item to render active.

	UI.registerHelper "activeNav", (name) ->
		if Router.current()?.route?.name is name then "active" else ""