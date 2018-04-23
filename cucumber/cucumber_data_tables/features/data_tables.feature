Feature: data tables examples

  Scenario: I am able to iterate through a data table
    Given I have a data table
    | Dave |  24 |
    | Tim  |  39 |
    Then I am able to print out each names and age to the command line