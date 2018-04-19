require 'spec_helper'
require 'gen_data'

describe 'Testing demoqa registration page with selenium' do

	before(:all) do
		@driver = SeleniumDemoReg.new
		@driver.access_registration_form
		@wait = Selenium::WebDriver::Wait.new(timeout: 10)
		rand_data = DataGen.new.rand_form_data
		@rand_fname = rand_data.questionable_fname
		@rand_lname = rand_data.questionable_lname
		@rand_pass = rand_data.password
		@rand_about = rand_data.about_me
		@rand_marital_status = rand_data.marital_status
		@rand_hobby = rand_data.hobby_status
		@rand_country = rand_data.country
		@rand_email = rand_data.email
		@rand_username = rand_data.username
		@rand_phone_no = rand_data.phone_no
		@rand_birth_month = rand_data.birth_month
		@rand_birth_day = rand_data.birth_day
		@rand_birth_year = rand_data.birth_year
	end

	context 'positive paths for the registration form and register' do

		it 'should land on the registration page' do
			expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
		end

		it 'should accept a first name' do
			@driver.first_name_field_displayed
			@driver.set_first_name_field(@rand_fname)
			expect(@driver.get_first_name_field_value).to eq @rand_fname
		end

		it 'should accept a last name' do
			@driver.last_name_field_displayed
			@driver.set_last_name_field(@rand_lname)
			expect(@driver.get_last_name_field_value).to eq @rand_lname
		end

		it 'should accept a marital status selection of Single, Married, or Divorced' do
      		@driver.select_marital_option('Single')
      		@driver.select_marital_option('Married')
      		@driver.select_marital_option('Divorced')
      		# @driver.select_marital_option(@rand_marital_status)
	    end

	    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      		@driver.select_hobby_option('Dance')
      		@driver.select_hobby_option('Reading')
      		@driver.select_hobby_option('Cricket')
      		# @driver.select_hobby_option(@rand_hobby)
	    end

	    it 'should have a country default of Afhghanistan' do
	    	expect(@driver.get_selected_country).to eq 'Afghanistan'
	    end

	    it 'accept a new DOB' do
	    	@driver.dob_month_list_select(@rand_birth_month)
	    	@driver.dob_day_list_select(@rand_birth_day)
	    	@driver.dob_year_list_select(@rand_birth_year)
	    end

	    it 'should accept a new country value' do
	    	@driver.country_dropdown_list_select(@rand_country)
	    end

	    it 'should accept a valid phone number' do
	      	@driver.set_phone_number_field @rand_phone_no
	      	expect(@driver.get_phone_number_field_value).to eq @rand_phone_no
	    end

	    it 'should accept a username' do
	      	@driver.set_user_name_field @rand_username
	      	expect(@driver.get_user_name_field_value).to eq @rand_username
	    end

	    it 'should accept an email' do
	    	@driver.set_email_field(@rand_email)
	    	expect(@driver.get_email_field_value).to eq @rand_email
	    end

	    it 'should accept an about yourself text' do
	      	@driver.set_about_yourself_field @rand_about
	      	expect(@driver.get_about_yourself_value).to eq @rand_about
	    end

	    it 'should accept a password' do
	      	@driver.set_password_field @rand_pass
	      	expect(@driver.get_password_value).to eq @rand_pass
	    end

	    it 'should accept a password confirmation' do
	      	@driver.set_confirmation_password_field @rand_pass
	      	expect(@driver.get_confirmation_password_value).to eq @rand_pass
	      	expect(@driver.get_confirmation_password_value).to eq @driver.get_password_value
	      	sleep 1
	    end

	    it 'should register successfully' do
	      	@driver.click_submit
	      	@wait.until {@driver.check_registration_successful}
	      	expect(@driver.check_registration_successful).to eq 'Thank you for your registration'
	    end
  	end
end