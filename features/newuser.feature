Feature: Newuser
  In order to use the site
  As an interested person
  I want to signup

  Scenario: Unsuccessful signup
    Given a user visits the signup page
    When he submits invalid signup information
    Then he should see an error message

  Scenario: Successful signup
    Given a user visits the signup page
    When he submits valid signup information
    Then he should see a welcome message
  
  
  



  
  

  
