Feature: Acceptance Test for the
  volume() function of Calculator

  Scenario: Calculate volume of a rectangular prism with length 2 height 4 and breadth 6 on our calculator
    Given I am using the calculator
    When I input length "2" height "4" breadth "6"
    Then I should see "48"


  Scenario Outline: Find volume of rectangular prism on our calculator
    Given I am using the calculator
    When I input length "<input1>" height "<input2>" breadth "<input3>"
    Then I should see "<output>"

  Examples:
    | input1 | input2 | input3 | output |
    | 0      | 1      | 100    | 0      |
    | -1     | 4      | 6      | None   |
    | 1      | -1     | 1      | None   |
    | 2      | 4      | -6     | None   |
    | 2      | 4      | 6      | 48     |
    | 2      | 9      | 5      | 90     |
