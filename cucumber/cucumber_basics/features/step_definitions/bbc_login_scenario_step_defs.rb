Given("I am on the BBC home page") do
  bbc_homepage.visit_home_page
end

Given("I move to the sign in page") do
  bbc_homepage.click_sign_in_link
end

When("I proceed to register") do
  bbc_signin.click_register
end

When("I input my DOB") do
  bbc_agefilter.click_over13
  bbc_age_proof.fill_day '15'
  bbc_age_proof.fill_month '10'
  bbc_age_proof.fill_year '1994'
  bbc_age_proof.click_continue
end

When(/^I input the necessary details with the password details (.*)$/) do |password|
  bbc_register.fill_password password
  bbc_register.final_register
end

Then(/^I receive the corresponding error (.*)$/) do |error|
  expect( bbc_register.pass_error_message).to eq error
end