require 'spec_helper'
require_relative '../gen_data'

describe 'Contains methods to create random data' do
	before(:all) do
		@rand_data = DataGen.new.rand_form_data
	end

	it 'should generate a random first name string' do
		expect(@rand_data.questionable_fname).to be_a String
	end

	it 'should generate a random last name string' do
		expect(@rand_data.questionable_fname).to be_a String
	end

	it 'should generat a random marital status' do
		expect(['Single', 'Married', 'Divorced']).to include @rand_data.marital_status
	end

	it 'should generate a random number set of hobbies' do
		expect(['Dance', 'Reading', 'Cricket']).to include @rand_data.hobby_status
	end

	it 'should generate a random password string of at least 8 characters' do
		expect(@rand_data.password).to be_a String
		expect(@rand_data.password.length).to be >= 8
	end

	it 'should generate a random about me' do
		expect(@rand_data.about_me).to be_a String
	end

	it 'should generate a random country string' do
		expect(@rand_data.country).to be_a String
	end

	it 'should generate a random email string' do
		expect(@rand_data.email).to be_a String
	end

	it 'should generate a random username string' do
		expect(@rand_data.username).to be_a String
	end

	it 'should generate a random phone number of 11 characters' do
		expect(@rand_data.phone_no).to be_a String
		expect(@rand_data.phone_no.length).to eq 11
	end

	it 'should generate a random birth month string between 1 and 12' do
		expect(@rand_data.birth_month).to be_a String
		expect(@rand_data.birth_month.to_i).to be_between 1, 12
	end

	it 'should generate a random birth day string between 1 and 31' do
		expect(@rand_data.birth_day).to be_a String
		expect(@rand_data.birth_day.to_i).to be_between 1, 31
	end

	it 'should generate a random birth year string between 1950 and 2014' do
		expect(@rand_data.birth_year).to be_a String
		expect(@rand_data.birth_year.to_i).to be_between 1950, 2014
	end
end