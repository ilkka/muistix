Feature: Login
  In order to use the site
  registered users
  should be able to log in

  @wip
  Scenario: Log in as registered user
    Given a User with email "joebob@example.com" with password "leet23sala"
    When I go to the home page
    And I log in as "joebob@example.com"/"leet23sala"
    Then I should be logged in
