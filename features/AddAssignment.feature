Feature: User can manually add assignment

Scenario: Add an assignment
    Given I am on the Assignments home page
    When I follow "Create an assignment"
    Then I should be on the Create New Assignment page
    When I fill in "Title" with "One"
    And I press "Save Changes"
    Then I should be on the Assignments home page
    And I should see "One"