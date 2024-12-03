# frozen_string_literal: true

require_relative 'prime_checker'

puts PrimeChecker.prime?(2) # true
puts PrimeChecker.prime?(10) # false
puts PrimeChecker.prime?(17) # true
puts PrimeChecker.prime?(1) # false
