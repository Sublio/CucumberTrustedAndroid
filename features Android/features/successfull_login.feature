Feature: Login under test user
  As an Rosberry Tester
  I want to open feed view 
  So I can begin testing quickly feed feature


  Scenario: Example steps
  Given I am on the Welcome Screen
  Then I touch join with email
  And I type "test@xttk.ru"
  And I touch next button
  Then I see password secureField
  Then I enter "Qwerty123" in password field
  And I touch show password button
  And I touch next button
  And I see Feed screen