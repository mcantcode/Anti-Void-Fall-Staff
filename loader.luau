local success, response = pcall(function()
	return game:HttpGet("https://raw.githubusercontent.com/mcantcode/Anti-Void-Fall-Staff/refs/heads/main/src/main.luau")
end)

if not success then return end

loadstring(response)()
