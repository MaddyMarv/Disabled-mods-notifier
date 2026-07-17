return {
	name = "mod_name",
	description = "mod_description",
	is_togglable = true,
	options = {
		widgets = {
			{
				setting_id = "notify_on_load",
				type = "checkbox",
				default_value = true,
				tab = "General",
			},
			{
				setting_id = "print_to_chat",
				type = "checkbox",
				default_value = true,
				tab = "General",
			},
			{
				setting_id = "show_notification",
				type = "checkbox",
				default_value = true,
				tab = "General",
			}
		}
	}
}
