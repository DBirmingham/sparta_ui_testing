require 'capybara'

Capybara.register_driver :chrome do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end


session = Capybara::Session.new(:chrome)


# Use to navigate to a page
session.visit('http://toolsqa.com/automation-practice-form/')


# Simple Form entries
session.fill_in 'firstname', with: 'test'
session.fill_in 'lastname', with: 'test2'
session.fill_in 'datepicker', with: '18-04-2018'

# Radio buttons
session.choose 'sex-0'
session.choose 'exp-1'

# Checkboxes
session.check 'profession-0'
session.check 'profession-1'
session.check 'tool-2'

# Dropdowns
session.select 'Australia', :from => 'continents'
session.select 'Browser Commands', :from => 'selenium_commands'
session.select 'Navigation Commands', :from => 'selenium_commands'

# Links
session.click_button('submit')
# session.click('Link Test')
# session.click('Partial Link Test')