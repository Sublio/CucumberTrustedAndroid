require 'calabash-android/calabash_steps'



Given /^I am on Privacy Policy view$/ do
	sleep(4)
	check_element_exists("toolbar TextView marked:'Privacy Policy'")
end
