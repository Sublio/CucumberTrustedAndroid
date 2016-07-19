Feature: Terms of use features
	As a TrustedInsight User
	I want to read all about Terms of using Trusted Insight app
	So I can be bla bla bla

Background: Open Terms of Use webView
	When I touch Terms of Use link

Scenario: Open in Browser button
  Given I am on Terms of Use view
  When I touch "Navigate up" button 
  Then I see launched system browser 