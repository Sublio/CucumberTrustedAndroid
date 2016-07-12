#require 'calabash-android/calabash_steps'

Given /^I am on the Welcome View$/ do
	check_element_exists("* marked:'ACCESS WITH EMAIL'")
	
end

Then /^I see Trusted Logo picture$/ do
	imageViews=query("android.widget.ImageView")
	destination = 0
	for imageView in imageViews 
		if imageView["id"]==="join_welcome_i"
			destination=imageView["id"]
			break
		else
			fail("There is no welcome logo")
		end
	end
end

And /^I see Welcome to Trusted Insight label$/ do
	labels=query("android.widget.TextView")
	welcomeLabel =0

	for label in labels
		if label["text"]==="Welcome\nto Trusted Insight"
			welcomeLabel=label["text"]
			puts welcomeLabel
			break
		else
			fail("There is no welcome label")
		end
	end
end