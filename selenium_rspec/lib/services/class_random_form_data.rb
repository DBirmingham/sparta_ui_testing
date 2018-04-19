require 'faker'

class RandFormData

	def questionable_fname
		Faker::Ancient.titan
	end

	def questionable_lname
		Faker::Lovecraft.deity
	end

	def password
		Faker::Internet.password
	end

	def about_me
		Faker::MostInterestingManInTheWorld.quote
	end

	def birth_month
		rand(1..12).to_s
	end

	def birth_day
		rand(1..31).to_s
	end

	def birth_year
		rand(1950..2014).to_s
	end

	def marital_status
		['Single', 'Married', 'Divorced'].sample
	end

	def hobby_status
		['Dance', 'Reading', 'Cricket'].sample
	end

	def country
		Faker::Address.country
	end

	def email
		"#{Faker::Science.element.downcase}@gmail.com"
	end

	def phone_no
		num = Faker::Number.number(10)
		'0' + num
	end

	def username
		Faker::Hipster.word
	end
end
