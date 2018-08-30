Feature: Demo Feature File
  As a presenter
  I want to show how awesome it is to use Selenium with Ruby and Cucumber
  So that everyone wants to use it someday or at least say 'oooh' and 'ahhh'

  Scenario: Successful Login
    Given I am on the internet login page
    When I input "tomsmith" as my username
    And I input "SuperSecretPassword!" as my password
    And I click the login button
    Then I should be on the Secure Area page

  Scenario: Attempt to log in using invalid credentials
    Given I am on the internet login page
    When I input "jdlksglds" as my username
    And I input "skdglksdg" as my password
    And I click the login button
    Then I should see the following error message "Your username is invalid"