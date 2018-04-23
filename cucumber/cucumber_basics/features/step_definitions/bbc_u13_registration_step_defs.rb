Given("I proceed to register as someone under 13") do
	bbc_signin.click_register
	bbc_agefilter.click_u13
end

When(/^I enter an invalid email (.*)$/) do |email|
	bbc_u13register.fill_guardian_email email
	bbc_u13register.click_send_email
end

Then(/^I receive an error on the under 13 registration page (.*)$/) do |error|
	expect(bbc_u13register.email_error_text).to eq error
end

When("I enter a valid email") do
	bbc_u13register.fill_guardian_email 'dslotham@hotmail.com'
	bbc_u13register.click_send_email
end

Then(/^I receive the confirmation message (.*)$/) do |confirm|
	expect(bbc_u13email_sent.email_confirmation_text).to eq confirm
end