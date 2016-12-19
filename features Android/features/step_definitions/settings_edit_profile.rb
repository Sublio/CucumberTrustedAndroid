Then /^I see userpic image$/ do
		wait_for_elements_exist("* id:'edit_profile_image'", :timeout => 20)
		edit_profile = query("TextView text:'Edit Profile'")
				if edit_profile.empty?
			fail("Userpic not found")
		else
			map("* id:'edit_profile_image'", :flash)
			puts("Userpic looks good!")
		end
	end

And /^I see overlay on userpic image$/ do
	edit_profile_overlay_image = query("* id:'edit_profile_overlay_image'")
		if edit_profile_overlay_image.empty?
			fail("Overlay not found")
		else
			map("* id:'edit_profile_overlay_image'", :flash)
			puts("Overlay looks good too!")
		end
end

And /^I see dashes on userpic image$/ do
	edit_dashed_image = query("* id:'edit_dashed_image'")
		if edit_dashed_image.empty?
			fail("Dashes not found")
		else
			map("* id:'edit_dashed_image'", :flash)
			puts("Dashes looks good!")
		end
end
Then /^I see First name placeholder$/ do
	first_name_placeholder = query("TextInputLayout hint:'First name'")
		if first_name_placeholder.empty?
			fail("First name placeholder not found")
		else
			puts("First name placeholder - ok!")
		end
end
And /^I see First name field$/ do
	first_name_field = query("TextInputLayout","hint")[0]
		if !(first_name_field == "First name")
			fail("First name field not found")
		else
			puts("First name field - ok!")
		end
end
And /^I can clear First name field$/ do
	first_name = query("* id:'edit_text'")[0]
	touch(first_name)
	clear_text(first_name)
	error_appear = query("TextView")[1]
	if !(error_appear["text"]  == "Please fill out this field")
		puts ("\033[31m#{"No empty field error appears"}\033[0m")
		end
	sleep(20)

end