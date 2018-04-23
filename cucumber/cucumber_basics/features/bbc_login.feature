Feature: BBC Login

	Scenario: Inputting incorrect username credentials shows an error
		Given I access the bbc login page
		And I input incorrect username details
		And I input incorrect password details
		When I click login button
		Then I receive an error for not finding the account

	Scenario: Inputting a password less than 8 characters shows an error
	    Given I access the bbc login page
	    And I input any username details
	    And I input incorrect password as 1234abc
	    When I click login button
	    Then I receive an error stating it needs to be at least 8 chars