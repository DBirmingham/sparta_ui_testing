# Capybara Test Automation

Within this folder you will find a test set aimed towards testing various parts of the BBC login and registration process. Overall it was an exercise in gaining an understanding of the automation test process, behaviour driven development (BDD) and further practice with capybara on a site that isn't necessarily optimised for testing.

## The Tests

The tests all follow a contextual format. This can be represented with gherkin syntax. Some examples include:

```Cucumber
GIVEN 	A user is on the login page
AND 	No details are entered in the username or password fields
WHEN 	The user clicks on the Sign In button
THEN 	An error saying 'Something's missing. Please check and try again.' is displayed under the username
AND 	An error saying 'Something's missing. Please check and try again.' is displayed under the password
AND 	An error saying 'Sorry, those details don't match. Check you've typed them correctly.' is displayed at the top of the login form
```

```Cucumber
GIVEN	A user has stated they are over 13
AND 	The user is on the DOB verification page
WHEN	A month value is entered outside of the values 1-12
THEN	An error saying 'Oops, that month doesn't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.' is displayed at the bottom of the form
```

```Cucumber
GIVEN	A user has stated they are under 13
AND 	The user is on the guardian email submission page
WHEN	An invalid email is submitted
THEN	An error saying 'Sorry, that doesn\'t look right. Please check it\'s a proper email.' is displayed
```

## Running Tests

Use the command 
```
rspec
```
in the root folder of this project ('capybara_class') to run the tests.

## Usage

Separate from the tests, the page object model in the capybara_class/lib/pages folder can be used to automate interactions with the browser. Simply instantiate the pages you need and call their methods, then run the ruby files like any other through your terminal
```
ruby [filename]
```
