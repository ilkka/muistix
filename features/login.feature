Feature: Login
  In order to use the site
  registered users
  should be able to log in

  @wip
  Scenario: Log in as registered user
    Given a User called "joebob" with password "leet23sala"
    When I go to the welcome page
    And I type "joebob" in the user field and "leet23sala" in the password field
    And I follow "log in"
    Then I should see "log out"
    And I should see "joebob"
