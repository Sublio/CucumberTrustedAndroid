Given /^I touch Settings button$/ do
	result=query("* id:'bottomBarItemFive'")
	
	touch(result)
	puts "Tap on Settings button"
end
Then /^I see Settings screen$/ do
wait_for_elements_exist("* id:'settings_name'", :timeout => 20)
title = query("* id:'bb_bottom_bar_title'").first
sleep(5) #Здесь требуется пауза, чтобы все кнопки нажимались с первого раза
	if !(title["text"]=="Settings")
		fail("No settings tab")
	end
end

And /^I see user photo$/ do
	userpic = query("* id:'settings_photo'")
		if userpic.empty?
			fail("Userpic is not found")
		else
			def flash userpic
			map("* id:'settings_photo'", :flash)
			puts("Userpic appears on Settings screen")
		end
	end
end
And /^I see firm logo$/ do
	firmlogo = query("* id:'settings_company_photo'")
		if firmlogo.empty?
			fail("Firmlogo is not found")
		else
			puts("Firmlogo appears on Settings screen")
		end
	end

And /^I see user name$/ do
	username = query("* id:'settings_name'").first
		if (username["text"].empty?)
			fail("User name is not found")
		else
			puts("User name appears on Settings screen")
		end
	end

And /^I see position name$/ do
	position = query("* id:'settings_position_name'")
		if position.empty?
			fail("Position is not found")
		else
			puts("Position appears on Settings screen")
		end
	end

And /^I see company name$/ do
	company = query("* id:'settings_company_name'")
		if company.empty?
			fail("Company is not found")
		else
			puts("Company appears on Settings screen")
		end
	end
# Проверяем кнопку "Edit Profile"
Then /^I see Edit Profile button$/ do
	edit_profile_button = query("* id:'settings_edit_profile'")
#	sleep(5)
		if edit_profile_button.empty?
			fail("Edit profile button is not found")
		else
			puts("Edit profile button appears on Settings screen")
#			sleep(5)
		end
	end

And /^I touch Edit Profile button$/ do
	edit_profile_button = query("* id:'settings_edit_profile'")	
	touch(edit_profile_button)
	puts "Edit Profile button has been tapped"
	wait_for_elements_exist("TextView text:'Edit Profile'", :timeout => 3)
	edit_profile = query("TextView text:'Edit Profile'")
	if edit_profile.empty?
		touch(edit_profile_button)
		puts "Edit Profile button has been tapped again"
	end
end

And /^Edit Profile screen appears$/ do
		wait_for_elements_exist("TextView text:'Edit Profile'", :timeout => 20)
		edit_profile = query("TextView text:'Edit Profile'")
				if edit_profile.empty?
			fail("Something went wrong")
		else
			puts("Edit Profile screen appears")
		end
	end
#==========================================================	
# Нажимаем на кнопку Назад, чтобы вернуться на предыдущий экран
And /^I touch Back button to return to previous screen$/ do
	
	back_button = query("* contentDescription:'Navigate up'")
	touch(back_button)
	puts "Back button has been tapped"
end

# Проверяем кнопку "Manage interests"
Then /^I see Manage Interests button$/ do
	manage_interests = query("* id:'settings_interests'")
		if manage_interests.empty?
			fail("Manage Interests button is not found")
		else
			puts("Manage Interests appears on Settings screen")
		end
	end

And /^I touch Manage Interests button$/ do

	manage_interests = query("* id:'settings_interests'")	
	touch(manage_interests)
	puts "Manage Interests button has been tapped"
end

And /^Manage interests screen appears$/ do
	wait_for_elements_exist("TextView text:'Manage interests'", :timeout => 20)
		edit_profile = query("TextView text:'Manage interests'")
		if edit_profile.empty?
			fail("Something went wrong")
		else
			puts("Manage interests screen appears")
		end
	end

# Проверяем кнопку "Change password"
Then /^I see Change password button$/ do
	change_password = query("* id:'settings_change_password'")
		if change_password.empty?
			fail("Сhange password button is not found")
		else
			puts("Сhange password button appears on Settings screen")
		end
	end

And /^I touch Change password button$/ do

	change_password = query("* id:'settings_change_password'")	
	touch(change_password)
	puts "Сhange password button has been tapped"
	sleep(5)
end

And /^Change password screen appears$/ do
	wait_for_elements_exist("TextView text:'Change password'", :timeout => 20)
	edit_profile = query("TextView text:'Change password'")
		if edit_profile.empty?
			fail("Something went wrong")
		else
			puts("Change password screen appears")
		end
	end

# Проверяем кнопку "About"
Then /^I see About button$/ do
	about = query("* id:'settings_about'")
		if about.empty?
			fail("About button is not found")
		else
			puts("About button appears on Settings screen")
		end
	end

And /^I touch About button$/ do

	about = query("* id:'settings_about'")	
	touch(about)
	puts "About button has been tapped"
	sleep(5)
end

And /^About screen appears$/ do
wait_for_elements_exist("TextView text:'About'", :timeout => 20)	
edit_profile = query("TextView text:'About'")
		if edit_profile.empty?
			fail("Something went wrong")
		else
			puts("About screen appears")
		end
	end


# Проверяем кнопку "Terms of Use"
Then /^I see Terms of Use button$/ do
	terms = query("* id:'settings_terms'")
		if terms.empty?
			fail("Terms of Use button is not found")
		else
			puts("Terms of Use button appears on Settings screen")
		end
	end

And /^I touch Terms of Use button$/ do

	terms = query("* id:'settings_terms'")	
	touch(terms)
	puts "Tap Terms button has been tapped"
#	sleep(5)
end

And /^Terms of Use screen appears$/ do
wait_for_elements_exist("TextView text:'Terms of Use'", :timeout => 20)	
edit_profile = query("TextView text:'Terms of Use'")
		if edit_profile.empty?
			fail("Something went wrong")
		else
			puts("Terms of Use screen appears")
		end
	end

# Проверяем кнопку "Privacy Policy"
Then /^I see Privacy Policy button$/ do
	policy = query("* id:'settings_privacy_policy'")
		if policy.empty?
			fail("Privacy Policy button is not found")
		else
			puts("Privacy Policy button appears on Settings screen")
		end
	end

And /^I touch Privacy Policy button$/ do
	
	policy = query("* id:'settings_privacy_policy'")	
	touch(policy)
	puts "Privacy Policy button has been tapped"
#	sleep(5)
end

And /^Privacy Policy screen appears$/ do
	wait_for_elements_exist("TextView text:'Privacy Policy'", :timeout => 20)	
	edit_profile = query("TextView text:'Privacy Policy'")
		if edit_profile.empty?
			fail("Something went wrong")
		else
			puts("Privacy Policy screen appears")
		end
	end

# Проверяем кнопку "Logout"
Then /^I see Logout button$/ do
	logout = query("* id:'settings_logout'")
		if logout.empty?
			fail("Logout button is not found")
		else
			puts("Logout button appears on Settings screen")
		end
	end

And /^I touch Logout button$/ do

	logout = query("* id:'settings_logout'")	
	touch(logout)
	puts "Logout button has been tapped"
	sleep (20)
end