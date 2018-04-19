require 'spec_helper'

describe 'Incorrect DOB details when attempting to register as someone over 13 result in an error' do

	before(:all) do
		@bbc_site = BbcSite.new
		@bbc_homepage = @bbc_site.bbc_homepage
		@bbc_signin = @bbc_site.bbc_signin
		@bbc_agefilter = @bbc_site.bbc_agefilter
		@bbc_age_proof = @bbc_site.bbc_age_proof
	end

	before(:each) do
		@bbc_homepage.visit_home_page
		@bbc_homepage.click_sign_in_link
		@bbc_signin.click_register
		@bbc_agefilter.click_over13
	end

	context 'It should produce an error when no DOB details are submitted' do

		it 'Should produce an error when the day, month and year fields are empty and the form is submitted' do
				
			@bbc_age_proof.fill_day ''
			@bbc_age_proof.fill_month ''
			@bbc_age_proof.fill_year ''
			@bbc_age_proof.click_continue

			expect(@bbc_age_proof.date_error_message).to eq 'Oops, that date doesn\'t look right. Make sure it\'s a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.'
		end
	end

	context 'It should produce an error when an invalid set of DOB details are entered' do

		it 'Should produce an error when inputting an invalid month' do
		
			@bbc_age_proof.fill_day '10'
			@bbc_age_proof.fill_month '15'
			@bbc_age_proof.fill_year '1994'
			@bbc_age_proof.click_continue

			expect(@bbc_age_proof.date_error_message).to eq 'Oops, that month doesn\'t look right. Make sure it\'s a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.'
		end
	end
end