require 'capybara/dsl'

class AgeFilterPage
	include Capybara::DSL

	U13_LABEL = 'Under 13'
	OVER_13_LABEL = '13 or over'

	def click_u13
		click_link(U13_LABEL)
	end

	def click_over13
		click_link(OVER_13_LABEL)
	end
end