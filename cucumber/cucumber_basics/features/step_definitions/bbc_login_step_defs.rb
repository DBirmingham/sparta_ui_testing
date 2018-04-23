Given("I access the bbc login page") do
  bbc_homepage.visit_home_page
  bbc_homepage.click_sign_in_link
end

And("I input incorrect username details") do
  bbc_signin.fill_username 'asdafeqfqes'
end

And("I input incorrect password details") do
  bbc_signin.fill_password 'jhavf37925nfa'
end

When("I click login button") do
  bbc_signin.click_to_signin
end

Then("I receive an error for not finding the account") do
  expect(bbc_signin.username_error).to eq bbc_signin.incorrect_username_text
end

And("I input any username details") do
  bbc_signin.fill_username 'asdafeqfqes'
end

And("I input incorrect password as 1234abc") do
  bbc_signin.fill_password '1234abc'
end

Then("I receive an error stating it needs to be at least 8 chars") do
  expect(bbc_signin.password_error).to eq bbc_signin.short_pass_text
end