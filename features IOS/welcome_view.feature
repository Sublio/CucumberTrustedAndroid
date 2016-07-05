
Feature: Welcome view features
  As an Rosberry Tester
  I want to use all Welcome view features
  So I can suppose that it is a TrustedInsight App


  Scenario: Trusted Logo and Welcoming label
  Given I am on the Welcome Screen
  Then I see Trusted Logo
  And I see Welcome to Trusted Insight label

  Scenario: Join with Email button opens signUp/login view
  Given I am on the Welcome Screen
  And I touch join with email
  Then I see signup login view

  Scenario: Terms of Use
  Given I am on the Welcome Screen
  When I touch Terms of Use button
  Then I see webView with Terms of Use header 


  Scenario: Privacy Policy
  Given I am on the Welcome Screen
  Then I touch Privacy Policy button
  Then I see webView with Privacy Policy header
  



  