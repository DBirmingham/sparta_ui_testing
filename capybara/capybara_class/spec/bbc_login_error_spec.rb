require 'spec_helper'

describe 'Incorrect user details produces valid error' do

	before(:all) do
		@bbc_site = BbcSite.new
		@bbc_homepage = @bbc_site.bbc_homepage
		@bbc_signin = @bbc_site.bbc_signin
	end

	context 'It should respond with the correct error when incorrect details are input' do

		it 'Should produce an error when inputting an incorrect password to an invalid account' do

			@bbc_homepage.visit_home_page
			@bbc_homepage.click_sign_in_link
			@bbc_signin.fill_username 'asdfegrwcqecq'
			@bbc_signin.fill_password 'asdvrv5573gS'
			@bbc_signin.click_to_signin

			expect(@bbc_signin.username_error).to eq "Sorry, we can’t find an account with that username. If you're over 13, try your email address instead or get help here."
		end
	end

	context 'It should respond with the correct error when no details are entered' do

		it 'Should produce three errors when no username or password is entered' do

			@bbc_homepage.visit_home_page
			@bbc_homepage.click_sign_in_link
			@bbc_signin.click_to_signin

			expect(@bbc_signin.username_error).to eq 'Something\'s missing. Please check and try again.'
			expect(@bbc_signin.password_error).to eq 'Something\'s missing. Please check and try again.'
			expect(@bbc_signin.invalid_user_pass_set_error).to eq 'Sorry, those details don\'t match. Check you\'ve typed them correctly.'
		end
	end

	context 'It should respond with the correct error when both username and password are too short' do

		it 'Should produce two errors when sign in is clicked' do
			
			@bbc_homepage.visit_home_page
			@bbc_homepage.click_sign_in_link
			@bbc_signin.fill_username 'a'
			@bbc_signin.fill_password 'abcde5'
			@bbc_signin.click_to_signin

			expect(@bbc_signin.username_error).to eq 'Sorry, that username\'s too short. It needs to be at least two characters.'
			expect(@bbc_signin.password_error).to eq 'Sorry, that password is too short. It needs to be eight characters or more.'
		end
	end
end