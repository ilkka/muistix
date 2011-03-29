Feature: Login
  In order to use the site
  registered users
  should be able to log in

  @wip
  Scenario: Log in as registered user
    Given a User called "joebob" with password "leet23sala"
    When I go to the welcome page
    And I log in as "joebob"/"leet23sala"
    Then I should be logged in
