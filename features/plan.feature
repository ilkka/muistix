Feature: Plans
  In order to store plans for the future
  registered users
  should be able to make, review and categorize plans

  Scenario: List plans
    Given I am logged in
    And I have made plans
    When I go to the home page
    Then I should see my plans

  Scenario: Show one plan
    Given I am logged in
    And I have made plans
    When I go to the home page
    And I select a plan
    Then I should see the steps for that plan

  @javascript
  Scenario: Create new plan
    Given I am logged in
    When I create a new plan
    And I go to the home page
    Then I should see the plan
    When I select the plan
    Then I should see the steps for the newly-created plan
