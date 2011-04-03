Feature: Lists
  In order to store lists for the future
  registered users
  should be able to make, review and categorize lists

  Scenario: List lists
    Given I am logged in
    And I have made lists
    When I go to the home page
    Then I should see my lists

  Scenario: Show one list
    Given I am logged in
    And I have made lists
    When I go to the home page
    And I select a list
    Then I should see the steps for that list

  @javascript
  Scenario: Create new list
    Given I am logged in
    When I create a new list
    And I go to the home page
    Then I should see the list
    When I select the list
    Then I should see the steps for the newly-created list
