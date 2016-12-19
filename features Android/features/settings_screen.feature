Feature: Settings screen features
 As an Rosberry Tester
 I want to open Settings screen and tap all buttons


 Background: Successfull login
 Given I am on the Welcome Screen
 Then I touch join with email
 And I type "test@xttk.ru"
 And I touch next button
 Then I see password secureField
 Then I enter "Qwerty123" in password field
 And I touch show password button
 And I touch next button
 And I see Feed screen

Scenario: Tap all button on Settings screen
Given I touch Settings button
Then I see Settings screen
And I see user photo
And I see firm logo
And I see user name
And I see position name
And I see company name

Then I see Edit Profile button
And I touch Edit Profile button
And Edit Profile screen appears
And I touch Back button to return to previous screen

Then I see Manage Interests button
And I touch Manage Interests button
And Manage interests screen appears
And I touch Back button to return to previous screen

Then I see Change password button
And I touch Change password button
And Change password screen appears
And I touch Back button to return to previous screen

Then I see About button
And I touch About button
And About screen appears
And I touch Back button to return to previous screen


Then I see Terms of Use button 
And I touch Terms of Use button
And Terms of Use screen appears
And I touch Back button to return to previous screen

Then I see Privacy Policy button
And I touch Privacy Policy button
And Privacy Policy screen appears
And I touch Back button to return to previous screen

Then I see Logout button
And I touch Logout button
And I am on the Welcome Screen