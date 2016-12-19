Feature: Edit Profile screen
 As an Rosberry Tester
 I want to open Edit Profile and check all elements


 Background: Successfull login
 Given I am on the Welcome Screen
 Then I touch join with email
 And I type "test1@xttk.ru"
 And I touch next button
 Then I see password secureField
 Then I enter "Qwerty123" in password field
 And I touch show password button
 And I touch next button
 And I see Feed screen
 Then I touch Settings button
 Then I see Settings screen
 Then I see Edit Profile button
 And I touch Edit Profile button
 And Edit Profile screen appears

Scenario: Check all fields and button on "Edit profile" screen
Given Edit Profile screen appears
Then I see userpic image
And I see overlay on userpic image
And I see dashes on userpic image

Then I see First name placeholder
And I see First name field
And I can clear First name field and empty field error appear

#Then I see Last name placeholder
#And I see Last name field
#And I can clear Last name field

#Then I see Company placeholder
#And I see Company name field
#And I can clear Company field

#Then I see Title \ Position placeholder
#And I see Title \ Position filed
#And I can clear Title \ Position filed

#Then I see Country placeholder
#And I tap on Country button
#And I see Country list
#And I can scroll it up and down
#And I can select country

#Then I see Short Bio placeholder
#And I see Short Bio field
#And I can clear Short Bio field

#Then I see Investor type placeholder
#And I see Investor type field

#Then I see Investor level placeholder
#And I see Investor type button


