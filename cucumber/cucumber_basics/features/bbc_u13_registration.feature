Feature: Under 13 BBC registration

	Scenario Outline: If I provide an invalid email I will receive the correct error
		Given I am on the BBC home page
	    And I move to the sign in page
	    And I proceed to register as someone under 13
	    When I enter an invalid email <email>
	    Then I receive an error on the under 13 registration page <error>

	    Examples:
	    | email | error |
	    | asdf  | Sorry, that doesn't look right. Please check it's a proper email.|
	    |       | Something's missing. Please check and try again.|

	Scenario: If I provide a valid email I will get a confirmation message on a new page
		Given I am on the BBC home page
	    And I move to the sign in page
	    And I proceed to register as someone under 13
	    When I enter a valid email
	    Then I receive the confirmation message Email sent. Now check your inbox and follow the instructions