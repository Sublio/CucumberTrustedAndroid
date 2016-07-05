Given /^I am on the Welcome Screen$/ do

	element = query("label")
	WelcomeLabel = element[3]
	text = WelcomeLabel["text"]
 	
	if (WelcomeLabel["label"] == "Welcome to Trusted Insight")

    	element_exists(WelcomeLabel)
    else
    	fail(msg = "There is no label or it is different")
    end
end


Then /^I touch join with email$/ do
	element = query("button")
	JoinWithEmailButton = element[0]
	touch(JoinWithEmailButton)
end

Then /^I see Trusted Logo$/ do

	pictures = query("UIImageView")

	logo = nil

	for picture in pictures
		if picture["id"] == "imgLogoLanding"
			logo = picture
		end
	end
	element_exists(logo)
end



Then /^I see signup login view$/ do

	labels = label('view')

	destinationLabel = nil

	for label in labels
		if label == "SignUp/Login view"
			destinationLabel = label
		end
	end

	#puts (destinationLabel)
end



And /^I see Welcome to Trusted Insight label$/ do

	labels = query("UILabel")

	welcomeLabel = nil

	for label in labels
		if label["value"] == "Welcome\nto Trusted Insight"
			welcomeLabel = label
		end
	end

	element_exists(label)
end


Then /^I type (.*)$/ do |login| 

	keyboard_enter_text(login)
end



Then /^I touch nexts button$/ do
	
	touch(query("TIArrowButton"))

end

Then /^I touch Terms of Use button$/ do

	mainLabel = query("TTTAttributedLabel")
	touch(mainLabel, :offset=>{:x=>-30, :y=>10})
	
end

Then /^I touch Privacy Policy button$/ do

	mainLabel = query("TTTAttributedLabel")
	touch(mainLabel, :offset=>{:x=>30, :y=>10})
	
end


Then /^I see password secureField$/ do
	sleep(2)
	check_element_exists("textField marked:'Password TextField'")
end


Then /^I see webView with Privacy Policy header$/ do
	navBarHeader = query("UINavigationBar label")
	header = navBarHeader[0]['text']

	if header != "Privacy Policy"
		fail("There is another text into header webView")
	end
end



Then /^I see webView with Terms of Use header$/ do
	navBarHeader = query("UINavigationBar label")
	header = navBarHeader[0]['text']

	if header != "Terms of Use"
		fail("There is another text into header webView")
	end
end

