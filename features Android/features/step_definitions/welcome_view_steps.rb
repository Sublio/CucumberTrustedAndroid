require 'calabash-android/calabash_steps'


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
			fail("There is no logo on Welcome view")
		end
	end
end

And /^I see Welcome to Trusted Insight label$/ do
	labels=query("android.widget.TextView")
	welcomeLabel =0

	for label in labels
		if label["text"]==="Welcome\nto Trusted Insight"
			welcomeLabel=label["text"]
			break
		else
			fail("There is no welcome label")
			break
		end
	end
end

=begin
When /^I tap on Terms of Use link$/ do

	sleep(2)
	labels=query("android.widget.TextView")
	bottomLabel=0

	for label in labels
		if label["text"]=="By creating an account you agree to our\nTerms of Use and Privacy Policy"
			bottomLabel=label
			break
		else
			fail("There is no bottom label")
			break
		end
	end
	touch(bottomLabel,:offset=>{:x=>30, :y=>10})
	sleep(10)

end
=end

Then /^I press access with email$/ do 
    
	emailButton=query("* id:'join_email'")
	touch(emailButton)
end



When /^I touch Terms of Use link$/ do

	bottomText=query("AppCompatTextView id:'join_terms_t'")
	touch(bottomText, :offset=>{:x=>-30, :y=>10})
end 

When /^I touch Privacy Policy link$/ do

	bottomText=query("AppCompatTextView id:'join_terms_t'")
	touch(bottomText, :offset=>{:x=>30, :y=>10})
end  


Then /^I see WebView with Terms of use header,back button, open in browser button and some webContent inside$/ do
	

	sleep(2)
	toolbar=query('toolbar')
	backButton=query("ImageButton contentDescription:'Navigate up'")
	openInBrowserButton=query("ActionMenuItemView contentDescription:'Watch in Browser'")
	textViewInToolBar=query("TextView text:'Terms of Use'")
	

	if toolbar.empty? or backButton.empty? or openInBrowserButton.empty? or textViewInToolBar.empty? then

		fail("Some UI element aren't here")
	
	end

end



Then /^I see WebView with Privacy Policy header,back button, open in browser button and some webContent inside$/ do
	
	sleep(2)
	toolbar=query('toolbar')
	backButton=query("ImageButton contentDescription:'Navigate up'")
	openInBrowserButton=query("ActionMenuItemView contentDescription:'Watch in Browser'")
	textViewInToolBar=query("TextView text:'Privacy Policy'")
	

	if toolbar.empty? or backButton.empty? or openInBrowserButton.empty? or textViewInToolBar.empty? then

		fail("Some UI element aren't here")
	
	end

end
