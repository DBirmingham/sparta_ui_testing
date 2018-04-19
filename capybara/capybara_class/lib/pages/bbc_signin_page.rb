require 'capybara/dsl'

class BbcSignIn
	include Capybara::DSL

	SIGNINPAGE_URL = 'https://account.bbc.com/signin'
	USERNAME_FIELD_ID = 'user-identifier-input'
	PASSWORD_FILED_ID = 'password-input'
	SIGN_IN_BUTTON_ID = 'submit-button'
	INCORRECT_USER_TEXT_ID = 'form-message-username'
	INCORRECT_PASS_TEXT_ID = 'form-message-password'
	GENERAL_ERROR_TEXT_ID = 'form-message-general'
	REGISTER_LINK_TEXT = "Register now"

	def visit_signin_page
		visit(HOMEPAGE_URL)
	end

	def fill_username user
		fill_in(USERNAME_FIELD_ID, with: user)
	end

	def fill_password pass
		fill_in(PASSWORD_FILED_ID, with: pass)
	end

	def click_to_signin
		click_button(SIGN_IN_BUTTON_ID)
	end

	def username_error
		find(:id , INCORRECT_USER_TEXT_ID).text
	end

	def password_error
		find(:id , INCORRECT_PASS_TEXT_ID).text
	end

	def invalid_user_pass_set_error
		find(:id, GENERAL_ERROR_TEXT_ID).text
	end

	def click_register
		click_link(REGISTER_LINK_TEXT)
	end
end