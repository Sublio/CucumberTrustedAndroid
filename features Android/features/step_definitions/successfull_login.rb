Given /^I am on the Welcome Screen$/ do
#	wait_for_elements_exist("android.widget.TextView'", :timeout => 20)
	welcome_text = query("android.widget.TextView").first
#	puts("-----------------------------> " + welcome_text["text"])
	if welcome_text["text"] == "Welcome\nto Trusted Insight"
		puts("Congrulations! " + "\""+ welcome_text["text"]+"\"" + " text appears")
	else
		fail("There is no label or it is different")
	end
end
#  Старый вариант проверки:
#	TextView = query("android.widget.TextView")
#	for TextView in TextView
#		if TextView["text"] == "Welcome\nto Trusted Insight"
#			puts "Welcome screen appears"
#			break
#  	else
#   		fail(msg = "There is no label or it is different")
#    	end
#   end
#end


Then /^I touch join with email$/ do
	result=query("* id:'join_email'")
	
	touch(result)
	puts "Join email button has been touched"
end

#Then /^I type (.*)$/ do
#	enter_text("android.support.v7.widget.AppCompatEditText:text", login_email)
#end


Then /^I type "(.*?)"$/ do |user_email|
  # Use calls to the Calabash API to get information
  # enter_text("android.support.v7.widget.AppCompatEditText:text", user_email) 
  enter_text("* id:'join_input_et'", user_email) 
end

Then /^I touch next button$/ do
 #touch(query("* id:'join_ab_next'"))
 touch(query("* id:'join_action_button'"))
end



Then  /^I see password secureField$/ do
	wait_for_elements_exist("* id:'join_password_back'", :timeout => 20)
	leave_password_screen = query("* id:'join_password_back'")
		if leave_password_screen.empty?
			fail("Password screen not found")
		else 
			#puts "Password screen appears"
		end
	end
 
Then /^I enter "(.*?)" in password field$/ do |user_password|
enter_text("* id:'join_input_et'", user_password)
wait_for_elements_exist("* id:'join_ab_next'", :timeout => 20)

end

Then /^I touch show password button$/ do
	touch(query("* id:'password_visibility_img'"))
	wait_for_elements_exist("* id:'join_ab_next'", :timeout => 20)
end

Then /^I see Feed screen$/ do
wait_for_elements_exist("* id:'view_pager'", :timeout => 20)
puts "Login successfull"
end
#Проверить видимость пароля
#query("android.support.v7.widget.AppCompatImageView", "id")
#query("android.support.v7.widget.AppCompatImageView", "selected")


#	element = query("button")
#	JoinWithEmailButton = element[0]
#	touch(JoinWithEmailButton)
#end


=begin
Then /^I type (.*)$/ do |login| 

	keyboard_enter_text(login)
end



Then /^I touch nexts button$/ do
	button = query("TIArrowButton")
	touch(button[0])

end


Then /^I see password secureField$/ do
	passwordField = query("TITextField")

	check_element_exists "TITextField"
end
=end

