require 'capybara/dsl'

class BbcRegister
	include Capybara::DSL

	EMAIL_FIELD_ID = 'user-identifier-input'
	EMAIL_ERROR_TEXT_ID = 'form-message-email'
	PASSWORD_FIELD_ID = 'password-input'
	PASSWORD_ERROR_TEXT_ID = 'form-message-password'
	POSTCODE_FIELD_ID = 'postcode-input'
	POSTCODE_ERROR_TEXT_ID = 'form-message-postcode'
	GENDER_DROPDOWN_ID = 'gender-input'
	GENDER_ERROR_TEXT_ID = 'form-message-gender'
	OPT_IN_RADIO_ID = 'optIn'
	OPT_OUT_RADIO_ID = 'optOut'
	OPT_INOUT_ERROR_TEXT_ID = 'form-message-marketingOptIn'

	def email_error_message
		find(:id, EMAIL_ERROR_TEXT_ID).text
	end

	def pass_error_message
		find(:id, PASSWORD_ERROR_TEXT_ID).text
	end

	def postcode_error_message
		find(:id, POSTCODE_ERROR_TEXT_ID).text
	end

	def gender_error_message
		find(:id, GENDER_ERROR_TEXT_ID).text
	end

	def opt_inout_error_message
		find(:id, OPT_INOUT_ERROR_TEXT_ID).text
	end

	def final_register
		click_button('submit-button')
	end

end