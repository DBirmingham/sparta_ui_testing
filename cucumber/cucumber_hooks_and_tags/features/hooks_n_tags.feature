Feature: hooks and tags
  As a user I wish to see how cucumber uses tags and hooks
 
 @test
  Scenario: Check for a name
    Given have a before hook in place with name details
    Then I can validate the information in the before hook
 
 @test2
  Scenario: an example of using tags
    Given I use a tag
    Then only this test will run