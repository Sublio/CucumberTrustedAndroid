Feature: Welcome View features
	As a TrustedInsight User
	I want to use all features from Welcome View
	So I can suppose it is a TrustedInsight App.

  
  Scenario: Trusted Logo and Welcoming label
  Given I am on the Welcome View
  Then I see Trusted Logo picture
  And I see Welcome to Trusted Insight label

  Scenario: Terms of use 
  Given I am on the Welcome View
  When I touch Terms of Use link
  Then I see WebView with Terms of use header,back button, open in browser button and some webContent inside	


  Scenario: Privacy Policy
  Given I am on the Welcome View
  When I touch Privacy Policy link
  Then I see WebView with Privacy Policy header,back button, open in browser button and some webContent inside



  Scenario: Test Scenario
  Then I press access with email

