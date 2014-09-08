ib_templatelua = {
	FillTemplate = function(input, variables, containers) -- Fill the template with the desired variables.
		local containers = containers or {"{{", "}}"} -- Optional variable, defaults to {{var}}.
		local newString = input
		for k, v in pairs(variables) do
			newString = string.gsub(newString, "{{" .. k .. "}}", variables[k])
		end
		return newString
	end
}
return ib_templatelua
