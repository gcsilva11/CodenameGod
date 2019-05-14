return {

	-- ROOM ITEMS --
	
	petrock = {
		name = "petrock",
		text = "Pet rock!",
		position = {x=984, y=224},
		image = "items1",
		scenario = "room",
		status = "show",
		found = 0,
		stub_for = "self"
	},
	coins = {
		name = "coins",
		text = "Coins!",
		position = {x=610, y=214},
		image = "items2",
		scenario = "room",
		status = "hide",
		found = 0,
		stub_for = "self"
	},
	coins_stub1 = {
		name = "coins_s1",
		text = "stub text!",
		position = {x=670, y=214},
		image = "items2",
		scenario = "room",
		status = "hide",
		found = 0,
		stub_for = "coins"
	},
	coins_stub2 = {
		name = "coins_s2",
		text = "stub text 2!",
		position = {x=520, y=214},
		image = "items2",
		scenario = "room",
		status = "hide",
		found = 0,
		stub_for = "coins"
	},
	ticket = {
		name = "",
		text = "Ticket",
		position = {x=262, y=375},
		image = "items3",
		scenario = "room",
		status = "hide",
		found = 0,
		stub_for = "self"
	},
	shoe1 = {
		name = "",
		text = "Shoe",
		position = {x=262, y=98},
		image = "items4",
		scenario = "room",
		status = "show",
		found = 0,
		stub_for = "self"
	},
	shoe2 = {
		name = "",
		text = "Shoe",
		position = {x=814, y=159},
		image = "items5",
		scenario = "room",
		status = "show",
		found = 0,
		stub_for = "self"
	}
	-- END OF ROOM ITEMS
}