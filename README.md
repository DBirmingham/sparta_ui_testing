# sparta_ui_testing

This repo includes some selenium examples and useful links which may help you come to understand the basics of Selenium with Ruby. The selenium_rspec folder in particular goes into testing automated UI tests and does so using selenium and a service object model (SOM) to input variable data into our tests.

## Getting Started

Clone this repo to your personal computer and ensure you have the selenium webdriver gem installed.
```
gem install selenium-webdriver
```

Look at the links page to get an idea of what Selenium is and how it works before looking at the selenium walkthrough example and then moving onto the class walkthrough. Use the commented out method calls to interact with the UI on the page. Add sleep commands to the code as you see fit.

### Prerequisites

This was done in Ruby 2.4.0 older versions may not be compatible. see here for instructions on updating your Ruby version (on Mac)

Necessary Gems
* selenium-webdriver
* faker

## Usage

Simply run the ruby files like any other
```
ruby [filename]
```

## Running Tests

Use the command 
```
rspec
```
in the root folder of the relevant test object to run the tests located within this project

## Built With
Ruby, rspec, faker and Selenium-webdriver!