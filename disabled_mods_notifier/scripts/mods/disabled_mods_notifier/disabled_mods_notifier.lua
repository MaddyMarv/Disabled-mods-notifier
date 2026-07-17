local mod = get_mod("disabled_mods_notifier")
local dmf = get_mod("DMF")

local function check_and_notify()
	local disabled_mods = dmf:get("disabled_mods_list")
	if disabled_mods then
		local disabled_names = {}
		for mod_name, is_disabled in pairs(disabled_mods) do
			if is_disabled then
				table.insert(disabled_names, mod_name)
			end
		end

		if #disabled_names > 0 then
			local message = "Disabled mods: " .. table.concat(disabled_names, ", ")
			
			if mod:get("print_to_chat") then
				mod:echo(message)
			end
			
			if mod:get("show_notification") then
				mod:notify(message)
			end
		end
	end
end

mod.on_all_mods_loaded = function()
	if mod:get("notify_on_load") then
		check_and_notify()
	end
end

mod:command("check_disabled_mods", "Scans for what mods are disabled and notifies you.", function()
	check_and_notify()
end)
