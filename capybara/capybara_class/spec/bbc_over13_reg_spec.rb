require 'spec_helper'

describe 'Incorrect registration details produce an error' do

	before(:all) do
		@bbc_site = BbcSite.new
		@bbc_homepage = @bbc_site.bbc_homepage
		@bbc_signin = @bbc_site.bbc_signin
		@bbc_agefilter = @bbc_site.bbc_agefilter
		@bbc_age_proof = @bbc_site.bbc_age_proof
		@bbc_register = @bbc_site.bbc_register
	end

	context 'It should produce an error when no details are entered' do

		it 'Should produce five errors when none of the fields or boxes are filled and submitted' do

			@bbc_homepage.visit_home_page
			@bbc_homepage.click_sign_in_link
			@bbc_signin.click_register
			@bbc_agefilter.click_over13
			@bbc_age_proof.fill_day '15'
			@bbc_age_proof.fill_month '10'
			@bbc_age_proof.fill_year '1994'
			@bbc_age_proof.click_continue
			@bbc_register.final_register

			expect(@bbc_register.email_error_message).to eq 'Something\'s missing. Please check and try again.'
			expect(@bbc_register.pass_error_message).to eq 'Something\'s missing. Please check and try again.'
			expect(@bbc_register.postcode_error_message).to eq 'Something\'s missing. Please check and try again.'
			expect(@bbc_register.gender_error_message).to eq 'Something\'s missing. Please check and try again.'
			expect(@bbc_register.opt_inout_error_message).to eq 'Something\'s missing. Please check and try again.'
		end
	end
end