require 'capybara/dsl'

class BbcAgeProof
	include Capybara::DSL

	DAY_FIELD_ID = 'day-input'
	MONTH_FIELD_ID = 'month-input'
	YEAR_FIELD_ID = 'year-input'
	DOB_FORM_ERROR_ID = 'form-message-dateOfBirth'

	def fill_day day
		fill_in(DAY_FIELD_ID, with: day)
	end

	def fill_month month
		fill_in(MONTH_FIELD_ID, with: month)
	end

	def fill_year year
		fill_in(YEAR_FIELD_ID, with: year)
	end

	def click_continue
		click_button('submit-button')
	end

	def date_error_message
		find(:id, DOB_FORM_ERROR_ID).text
	end
end