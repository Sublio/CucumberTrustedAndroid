Feature: Forgot password feature
	As a TrustedInsight User
	I want to reset my password and change it in private page in browser
	For continue using account in Trusted Insight

Background:
	Given I am on the Welcome View
	When I press view with id "join_email_t"
  	Then I enter text "untestor@gmail.com" into field with id "join_input_et" 
  	And I press view with id "join_ab_next"
  	Then I should see "untestor@gmail.com"
  	And I should see "Forgot password?"
	


Scenario: Forgot Password feature
	When I press the "Forgot password?" button
	Then I wait for 2 seconds
	And I press view with id "buttonDefaultPositive"
	Then I should see "To reset your password, visit the link sent to your email"
	And I should receive mail for reseting password