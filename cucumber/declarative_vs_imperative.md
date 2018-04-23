# Imperative vs Declarative

Understanding the difference between Imperative and Declarative steps is also vital in the creation of scripts.

Imperative login example: -
```gherkin
Feature: Login

Scenario: As a user I with valid credentials I am able to login
    Given I enter username into username text box
    And Enter password into password text box
    And Verify that password text is dotted
    When I click on signin button
    Then the username is displayed
    And the welcome message is displayed
    And the signout link is displayed
    And the user has access to his profile
```


As you can see from the above it's, well pretty long and highly descriptive. This is not an issue as such but sometimes the size and the way it's written can take away from what you are trying to explain.

Declarative login example: -
```gherkin
Feature: Login

Scenario: As a user I with valid credentials I am able to login
    Given I have Using user credentials
    When I sign in
    Then I verify that user is signed in
```


Here is the other end of the scale.... This is a little too over declarative and doesn't really show the business what is happening without reviewing code.

The happy medium: -
```gherkin
Feature: Login

Scenario: As a user I with valid credentials I am able to login
    Given I use a valid username and password
    And I verify that password entered is not user readable
    When I sign in to the system
    Then I verify that a user welcome message is displayed
    And I verify that user has access to his profile
```

It's about finding a good balance between the two styles but the core message is to ensure that everyone can understand what is happening.