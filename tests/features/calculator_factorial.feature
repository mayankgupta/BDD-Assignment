Feature: Acceptance Test for the
  factorial() function of Calculator

  Scenario: Calculate 4 factorial on our calculator
    Given I am using the calculator
    When I input "5"!
    Then I should see "120"


  Scenario Outline: Find factorial of a number on our calculator
    Given I am using the calculator
    When I input "<input1>"!
    Then I should see "<output>"

  Examples:
    | input1 | output |
    | 2      | 2      |
    | 3      | 6      |
    | 4      | 24     |
    | -4     | None   |
