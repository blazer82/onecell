# Collections

Here is where we're gonna set up all our mongodb collections.

### System's parameters collection
First we would need a system's parameters collection.

	SystemParametersCollection = new Meteor.Collection "systemParameters"

Now we're gonna initialize the collection with some initial values if it's still empty.

	unless SystemParametersCollection.find().count()
		SystemParametersCollection.insert
			key: "majorityThreshold"
			value: 0.7

		SystemParametersCollection.insert
			key: "charta"
			value:
				text: "The purpose of this system is to..."


### Proposals and categories
This is the collection to hold all the proposals.

	ProposalCollection = new Meteor.Collection "proposals"

Proposals are organized by a single hierarchy of categories stored in another collection.

	CatgeoriesCollection = new Meteor.Collection "categories"

We're setting initial catgeories if there are none defined yet.

	unless CatgeoriesCollection.find().count()
		CatgeoriesCollection.insert
			key: "systemparams"
			name: "System parameters"
			description: "Proposals concerning the core parameters of the system"
		
		CatgeoriesCollection.insert
			key: "systemcode"
			name: "System source code"
			description: "Change requests in the systems own source code"

		CatgeoriesCollection.insert
			key: "charta"
			name: "Charta/Purpose"
			description: "Proposals concerning the purpose of the system"


### Inventory
The collection which will hold our inventory

	InventoryCollection = new Meteor.Collection "inventory"


### Features
Features will be enabled by specific goals.

	FeaturesCollection = new Meteor.Collection "features"

We've got one initial feature, the voting mechanism, that is going to be enabled by a certain amount of users.

	unless FeaturesCollection.find().count()
		FeaturesCollection.insert
			key: "voting"
			name: "Voting"
			description: "This feature enables the voting mechanism as soon as the system reaches 100 registered users."
			requires:
				userAmount: 100