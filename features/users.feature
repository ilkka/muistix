Feature: Users
  In order for the site to be useful
  users
  should be able to register, log in and log out

  Scenario: Log in as registered user
    Given I am not logged in
    And a User exists
    When I go to the home page
    And I log in as the user
    Then I should be logged in

  Scenario: Log out
    Given I am logged in
    When I go to the home page
    And I click on "logout"
    Then I should not be logged in

  @wip
  Scenario: Register
    Given I am not logged in
    When I go to the home page
    And I register
    Then I should be logged in
