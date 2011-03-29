Feature: Users
  In order for the site to be useful
  users
  should be able to register, log in and log out

  Scenario: Log in as registered user
    Given I am not logged in
    And a User with email "joebob@example.com" with password "leet23sala"
    When I go to the home page
    And I log in as "joebob@example.com"/"leet23sala"
    Then I should be logged in

  @wip
  Scenario: Log out
    Given I am logged in
    When I go to the home page
    And I click on "logout"
    Then I should not be logged in
