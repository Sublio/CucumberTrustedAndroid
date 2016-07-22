Feature: Email_login features
	As a TrustedInsight User
	I want to have an ability to login in my account
	For using all features, offered me by app


@reset
Scenario: Success Login
	Given I am on the Welcome View
	When I press view with id "join_email_t"
  	Then I enter text "sublio1260@gmail.com" into field with id "join_input_et" 
  	And I press view with id "join_ab_next"
  	Then I should see "sublio1260@gmail.com"
  	And I should see "Forgot password?"
  	Then I enter text "avatar1260" into field with id "join_input_et"
  	Then I wait for 2 seconds
  	And I press view with id "join_ab_next"
  	Then I should see search button, toolbar with 5 tabs and RecyclerView

Scenario: Get Back From Email entering View
	When I press access with email
	When I press view with id "join_email_back"
	Then I see Trusted Logo picture
	And I see Welcome to Trusted Insight label

Scenario: Invalid Password
	Given I am on the Welcome View
	When I press view with id "join_email_t"
  	Then I enter text "sublio1260@gmail.com" into field with id "join_input_et" 
  	And I press view with id "join_ab_next"
  	Then I should see "sublio1260@gmail.com"
  	And I should see "Forgot password?"
  	Then I enter text "avatar1261" into field with id "join_input_et"
  	Then I wait for 2 seconds
  	And I press view with id "join_ab_next"
  	Then I should see "Incorrect password, Please try again!"

Scenario: There is no go forvard button due to innapropriate email format
	Given I am on the Welcome View
	When I press view with id "join_email_t"
	Then I enter text "sublio1260" into field with id "join_input_et" 
	Then I wait for 2 seconds
	Then I dont see join_ab_next button

Scenario: Show and Hide password characters 
	Given I am on the Welcome View
	When I press view with id "join_email_t"
  	Then I enter text "sublio1260@gmail.com" into field with id "join_input_et" 
  	And I press view with id "join_ab_next"
  	Then I should see "sublio1260@gmail.com"
  	And I should see "Forgot password?"
  	When I enter text "avatar1260" into field with id "join_input_et"
  	Then I wait for 2 seconds
  	And I tap button with id password_visibility_img
  	Then I should see "avatar1260"

