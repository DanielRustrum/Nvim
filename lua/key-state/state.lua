local StateData = {
	OnHold = {},
	current_state = nil,
	States = {},
}

function create(state_name, inherits)
	inherits = inherits or {}
	state_name = string.lower(state_name)

	if StateData.States[state_name] then
		return
	end

	StateData.States[state_name] = {
		keys = {},
		inherits = inherits,
	}
end

function swap(state_name)
	state_name = string.lower(state_name)

	if StateData.States[state_name] then
		StateData.current_state = state_name

		local states = StateData.States[state_name].inherits
		table.insert(state_name)
	end
end
