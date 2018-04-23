Given("I have a data table") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @table = table.raw
end

Then("I am able to print out each names and age to the command line") do
  @table.each do |data|
  	puts "users name is #{data[0]} and age is #{data[1]}"
  end
end