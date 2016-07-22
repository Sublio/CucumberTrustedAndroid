Feature: Privacy policy features
	As a TrustedInsight User
	I want to read all about Privacy policy Trusted Insight app
	So I read all about Privacy policy 

Background: Open Privacy Policy webView
	When I touch Privacy Policy link

Scenario: Open in Browser button
  Given I am on Privacy Policy view
  When I press view with id "op_global_link"  
  Then I see launched system browser

 Scenario: Return back to Welcome view
 	Given I am on Privacy Policy view
 	When I go back 
 	Then I see Welcome view

 Scenario: Open up Privacy Policy and wait untill loader will be hidden
 	Given I am on Privacy Policy view
 	Then I wait for 1 second
 	Then I wait for progress