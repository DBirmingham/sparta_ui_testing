Feature: DOB page

	Scenario Outline: If I input invalid DOB details I will receive the correct error
		Given I am on the BBC home page
	    And I move to the sign in page
	    And I proceed to register
	    When I input my DOB as <day>, <month> and <year>
	    Then I receive the correct <error>

	    Examples:
	    | day | month | year | error|
	    | 32  |  10   | 1994 | Oops, that day doesn't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.|
	    | 15  |  13   | 1994 | Oops, that month doesn't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.|
	    | 15  |  10   | 1000 | Make sure the date is not too far in the past. Unless you're the record breaker for oldest person ever in which case, well done!|
	    | 15  |  10   | 2005 | Sorry, you need to be 13 or over.|
	    | 15  |  10   | 2020 | Oops, that date's in the future. Make sure it’s a date in the past. (Unless you’re a time traveller. In which case, what’s the future like? Are there flying cars?)|
	    | 15  |  10   |      | Oops, that year doesn't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.|
	    | 15  |       |      | Oops, that month and year don't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.|
	    |     |   10  |      | Oops, that day and year don't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.|
	    |     |       | 1994 | Oops, that day and month don't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.|
	    |     |       |      | Oops, that date doesn't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.|