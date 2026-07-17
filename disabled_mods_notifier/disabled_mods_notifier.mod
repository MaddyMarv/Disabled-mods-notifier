return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`disabled_mods_notifier` encountered an error loading the Darktide Mod Framework.")

		new_mod("disabled_mods_notifier", {
			mod_script       = "disabled_mods_notifier/scripts/mods/disabled_mods_notifier/disabled_mods_notifier",
			mod_data         = "disabled_mods_notifier/scripts/mods/disabled_mods_notifier/disabled_mods_notifier_data",
			mod_localization = "disabled_mods_notifier/scripts/mods/disabled_mods_notifier/disabled_mods_notifier_localization",
		})
	end,
	packages = {},
}
