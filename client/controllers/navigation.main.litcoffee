# Main navigation

Here we're gonna define all the client side controller logic for the main navigation.

### Event handlers

The first handler will be a click handler on menu items which will then route to the specified route (if specified)

	Template.navigationMain.events
		"click a": (event) ->
			$menuItem = ($ event.currentTarget)
			Router.go $menuItem.data "route" if $menuItem.data "route"