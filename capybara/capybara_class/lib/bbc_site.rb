require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_signin_page'
require_relative 'pages/bbc_register_agefilter'
require_relative 'pages/bbc_u13register'
require_relative 'pages/bbc_u13_emailsent_confirmation'
require_relative 'pages/bbc_age_proof'
require_relative 'pages/bbc_over13_register'

class BbcSite

	def bbc_homepage
		BbcHomepage.new
	end

	def bbc_signin
		BbcSignIn.new
	end

	def bbc_agefilter
		AgeFilterPage.new
	end

	def bbc_u13register
		U13RegPage.new
	end

	def bbc_u13email_sent
		U13EmailSentPage.new
	end

	def bbc_age_proof
		BbcAgeProof.new
	end

	def bbc_register
		BbcRegister.new
	end
end