Feature: Terms of use features
	As a TrustedInsight User
	I want to read all about Terms of using Trusted Insight app
	So I read all about Terms of Using 

Background: Open Terms of Use webView
	When I touch Terms of Use link

Scenario: Open in Browser button
  Given I am on Terms of Use view
  When I press view with id "op_global_link"  
  Then I see launched system browser

 Scenario: Return back to Welcome view
 	Given I am on Terms of Use view
 	When I go back 
 	Then I see Welcome view

 Scenario: Open up Terms of Use and wait untill loader will be hidden
 	Given I am on Terms of Use view
 	Then I wait for 1 second
 	Then I wait for progress