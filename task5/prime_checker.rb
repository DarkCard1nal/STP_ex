# frozen_string_literal: true

# module PrimeChecker checks numbers for prime
module PrimeChecker
	# Method checks numbers for prime, return true if the number is prime
	def self.prime?(number)
		return false if number < 2

		(2..Math.sqrt(number)).each do |i|
			return false if (number % i).zero?
		end

		true
	end
end
