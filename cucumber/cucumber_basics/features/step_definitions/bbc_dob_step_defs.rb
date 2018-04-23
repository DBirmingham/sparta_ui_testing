When(/^I input my DOB as (.*), (.*) and (.*)$/) do |day, month, year|
	bbc_agefilter.click_over13
  	bbc_age_proof.fill_day day
  	bbc_age_proof.fill_month month
  	bbc_age_proof.fill_year year
  	bbc_age_proof.click_continue
end

Then(/^I receive the correct (.*)$/) do |error|
  expect(bbc_age_proof.date_error_message).to eq error
end