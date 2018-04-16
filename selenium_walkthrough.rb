#require selenium so that we can begin UI testing :)
require 'selenium-webdriver'
#Using Selenium module we create a variable which now holds the appropriate driver for google chrome
chrome_driver = Selenium::WebDriver.for :chrome
#The get method on the driver allows us to pull up a page for testing
chrome_driver.get('http://toolsqa.com/automation-practice-form/')
#The find element method is a versatile method for grabbing specific page elements
chrome_driver.find_element(:name, "firstname").displayed?
#Here we can see ut being used to find an element with the name 'firstname'
chrome_driver.find_element(:name, "firstname").send_keys("test")
#We then run various other methods on this specific element to automate UI usage and testing