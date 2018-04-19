require 'spec_helper'

describe 'Under 13 registration process' do

	before(:all) do
		@bbc_site = BbcSite.new
		@bbc_homepage = @bbc_site.bbc_homepage
		@bbc_signin = @bbc_site.bbc_signin
		@bbc_agefilter = @bbc_site.bbc_agefilter
		@bbc_u13register = @bbc_site.bbc_u13register
		@bbc_email_sent = @bbc_site.bbc_u13email_sent
	end

	context 'It should respond to a guardian email input'

		it 'Should send you to an email confirmation page once you\'ve succsessfully registered' do
			
			@bbc_homepage.visit_home_page
			@bbc_homepage.click_sign_in_link
			@bbc_signin.click_register
			@bbc_agefilter.click_u13
			@bbc_u13register.fill_guardian_email 'dslotham@hotmail.com'
			@bbc_u13register.click_send_email

			expect(@bbc_email_sent.email_confirmation_text).to eq 'Email sent. Now check your inbox and follow the instructions' 
		end

		it 'Should produce an error when inputting an invalid email' do

			@bbc_homepage.visit_home_page
			@bbc_homepage.click_sign_in_link
			@bbc_signin.click_register
			@bbc_agefilter.click_u13
			@bbc_u13register.fill_guardian_email 'asdafe'
			@bbc_u13register.click_send_email

			expect(@bbc_u13register.email_error_text).to eq 'Sorry, that doesn\'t look right. Please check it\'s a proper email.'
		end

end