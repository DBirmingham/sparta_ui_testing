require 'capybara/dsl'

class U13EmailSentPage
	include Capybara::DSL

	def email_confirmation_text
		find('p').text
	end
end