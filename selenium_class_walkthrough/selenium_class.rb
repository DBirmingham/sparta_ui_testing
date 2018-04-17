require 'selenium-webdriver'

class SeleniumQaToolsForm

	PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
	FIRST_NAME_FIELD_NAME = 'firstname'
	LAST_NAME_FIELD_NAME = 'lastname'
	PARTIAL_LINK_TEST_TEXT = 'Partial Link Test'
	LINK_TEST_TEXT = 'Link Test'
	MALE_SEX = 'sex-0'
	FEMALE_SEX = 'sex-1'
	EXPERIENCE_RADIO_NAME = 'exp'
	DATE_FIELD_ID = 'datepicker'
	PROFESSION_SELECTION_NAME = 'profession'
	PHOTO_SUBMIT_ID = 'photo'
	DOWNLOADS_LINK_1_TEXT = 'Selenium Automation Hybrid Framework'
	DOWNLOADS_LINK_2_TEXT = 'Test File to Download'
	TOOL_SELECTION_NAME = 'tool'
	CONTINENT_DROPDOWN_ID = 'continents'
	SELENIUM_COMMANDS_SELECTION_ID = 'selenium_commands'

	def initialize
		@chrome_driver = Selenium::WebDriver.for :chrome
	end

	def visit_practice_form
		@chrome_driver.get(PRACTICE_FORM_URL)
	end

	def click_partial_link_test
		@chrome_driver.find_element(:partial_link_text, PARTIAL_LINK_TEST_TEXT).click
	end

	def click_link_test
		@chrome_driver.find_element(:link_text, LINK_TEST_TEXT).click
	end

	def input_firstname_field(text)
		@chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
	end

	def input_lastname_field(text)
		@chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
	end

	def select_male_sex
		@chrome_driver.find_element(:id, MALE_SEX).click
	end

	def select_female_sex
		@chrome_driver.find_element(:id, FEMALE_SEX).click
	end

	def select_radio year
		years = @chrome_driver.find_elements(:name, EXPERIENCE_RADIO_NAME)
		
		years.each do |y|
			y.click if y["value"] == year
		end
	end

	def select_professions work
		professions = @chrome_driver.find_elements(:name, PROFESSION_SELECTION_NAME)
		
		professions.each do |prof|
			prof.click if work.include? prof["value"]
		end
	end

	def upload_profile_picture_via path
		@chrome_driver.find_element(:id, PHOTO_SUBMIT_ID).send_keys(path).click
	end

	def click_download_link_1
		@chrome_driver.find_element(:link_text, DOWNLOADS_LINK_1_TEXT).click
	end

	def click_download_link_2
		@chrome_driver.find_element(:link_text, DOWNLOADS_LINK_2_TEXT).click
	end

	def select_tools tooling
		tools = @chrome_driver.find_elements(:name, TOOL_SELECTION_NAME)
		
		tools.each do |t|
			t.click if tooling.include? t["value"]
		end
	end

	def select_continent continent
		dropdown = @chrome_driver.find_element(:id, CONTINENT_DROPDOWN_ID)
		options = dropdown.find_elements(:tag_name,"option")
		
		options.each do |option|
			option.click if option.text == continent
		end
	end

	def select_selenium_commands commands
		list = @chrome_driver.find_element(:id, SELENIUM_COMMANDS_SELECTION_ID)
		options = list.find_elements(:tag_name,"option")
		
		options.each do |option|
			option.click if commands.include? option.text
		end
	end

	def sleep num
		sleep num
	end
end

form = SeleniumQaToolsForm.new

# form.visit_practice_form
# form.click_partial_link_test
# form.click_link_test
# form.input_firstname_field("Dominic")
# form.get_first_name_text
# form.input_lastname_field("Birmingham")
# form.get_last_name_text
# form.select_male_sex
# form.select_female_sex
# form.select_radio "1"
# form.input_date "16-04-2018"
# form.select_professions ["Manual Tester", "Automation Tester"]
# form.upload_profile_picture_via "PATH"
# form.click_download_link_1
# form.click_download_link_2
# form.select_tools ["QTP", "Selenium IDE"]
# form.select_continent "Australia"
# form.select_selenium_commands ["Browser Commands", "Navigation Commands"]
# form.sleep 10