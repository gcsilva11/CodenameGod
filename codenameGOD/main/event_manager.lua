local event_manager = {}
event_manager.elapsed_time = 0
event_manager.events = {}
event_manager.selected_event = nil

function event_manager:execute_event()
	if self.selected_event then
		self.selected_event.callback()

		table.remove(self.events, 1)
		self.selected_event = nil
		self.elapsed_time = 0
	end
end

function event_manager:skip_event()
	self:execute_event()
end

function event_manager:update(dt)
	if self.selected_event then
		self.elapsed_time = self.elapsed_time + dt

		if self.elapsed_time >= self.selected_event.delay then
			self:execute_event()
		end
	else
		if #self.events > 0 then
			self.selected_event = self.events[1]
		end
	end
end

function event_manager:register_event(delay, callback)
	table.insert(self.events, {delay=delay, callback=callback})
end

return event_manager
