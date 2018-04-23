Given("I provide an integer of {int}") do |arg1|
  @arg1 = arg1
end

Then("I will be able to test the integer") do
  expect(@arg1).to eq 14
end

Given("I provide an float of {float}") do |float|
  @float_var = float
end

Then("I will be able to test the float") do
  expect(@float_var).to be_a Float
end

Given("I provide specific word {word}") do |word|
  @captured_word = word
end

Then("I will be able to test the word") do
  expect(@captured_word).to eq 'banana'
end

Given(/^I provide specific something like (.*) I can capture it using a regex$/) do |word|
  @cheese = word
end

Then("I will be able to test the captured regex") do
  expect(@cheese).to eq 'cheese'
end