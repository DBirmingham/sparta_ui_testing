Before('@test2') do
	@users = ['Dave', 'Susan', 'Jamie']
end

After do
	puts "I'm an after hook and I have run"
end

After('@test') do
	puts "This is specific to test"
end