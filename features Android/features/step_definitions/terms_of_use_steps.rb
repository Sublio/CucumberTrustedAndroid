require 'calabash-android/calabash_steps'



Given /^I am on Terms of Use view$/ do
	sleep(4)
	check_element_exists("toolbar TextView marked:'Terms of Use'")
end


Then /^I see launched system browser$/ do

	sleep(3)
end

Then /^I see Welcome view$/ do

	sleep(3)
	check_element_exists("* marked:'ACCESS WITH EMAIL'")

end



