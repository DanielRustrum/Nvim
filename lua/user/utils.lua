Editor = {
	fn = {},
}

function Editor.fn.dump(table)
	if type(table) == "table" then
		local s = "{ "
		for k, v in pairs(table) do
			if type(k) ~= "number" then
				k = '"' .. k .. '"'
			end
			s = s .. "[" .. k .. "] = " .. Editor.fn.dump(v) .. ","
		end
		return s .. "} "
	else
		return tostring(table)
	end
end

function Editor.fn.startsWith(str, start)
	return str:sub(1, #start) == start
end
