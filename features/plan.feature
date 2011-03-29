Feature: Plans
  In order to store plans for the future
  registered users
  should be able to make, review and categorize plans

  @wip
  Scenario: List plans
    Given I am logged in
    And I have made plans
    When I go to the home page
    Then I should see my plans
