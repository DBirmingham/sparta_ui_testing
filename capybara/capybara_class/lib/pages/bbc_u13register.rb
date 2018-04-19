require 'capybara/dsl'

class U13RegPage
	include Capybara::DSL

	EMAIL_FIELD_ID = 'email-input'
	EMAIL_BUTTON_TEXT = 'Send email'
	EMAIL_ERROR_TEXT = 'form-message-email'

	def fill_guardian_email email
		fill_in(EMAIL_FIELD_ID, with: email)
	end

	def click_send_email
		click_button(EMAIL_BUTTON_TEXT)
	end

	def email_error_text
		find(:id, EMAIL_ERROR_TEXT).text
	end
end