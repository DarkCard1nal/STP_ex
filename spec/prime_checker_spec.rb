# frozen_string_literal: true

require 'rspec'
require 'prime'
require_relative '../task5/prime_checker'

RSpec.describe PrimeChecker do # rubocop:disable Metrics/BlockLength
	describe '.prime?' do # rubocop:disable Metrics/BlockLength
		context 'when the number is prime' do
			it 'returns true for 2' do
				expect(PrimeChecker.prime?(2)).to be true
			end

			it 'returns true for 3' do
				expect(PrimeChecker.prime?(3)).to be true
			end

			it 'returns true for large prime numbers (97)' do
				expect(PrimeChecker.prime?(97)).to be true
			end
		end

		context 'when the number is not prime' do
			it 'returns false for 1 (not prime)' do
				expect(PrimeChecker.prime?(1)).to be false
			end

			it 'returns false for 0 (not prime)' do
				expect(PrimeChecker.prime?(0)).to be false
			end

			it 'returns false for negative numbers (-5)' do
				expect(PrimeChecker.prime?(-5)).to be false
			end

			it 'returns false for even numbers (4) greater than 2' do
				expect(PrimeChecker.prime?(4)).to be false
			end

			it 'returns false for non-prime odd numbers (9)' do
				expect(PrimeChecker.prime?(9)).to be false
			end
		end

		context 'where is a random number' do
			it 'checks a random number from -10_000 to -100' do
				random_number = rand(-10_000..-100)
				expect(PrimeChecker.prime?(random_number)).to be Prime.prime?(random_number)
			end

			it 'checks a random number from -100 to -1' do
				random_number = rand(-100..-1)
				expect(PrimeChecker.prime?(random_number)).to be Prime.prime?(random_number)
			end

			it 'checks a random number from -10 to 10' do
				random_number = rand(-10..10)
				expect(PrimeChecker.prime?(random_number)).to be Prime.prime?(random_number)
			end

			it 'checks a random number from 1 to 100' do
				random_number = rand(1..100)
				expect(PrimeChecker.prime?(random_number)).to be Prime.prime?(random_number)
			end

			it 'checks a random number from 100 to 10_000' do
				random_number = rand(100..10_000)
				expect(PrimeChecker.prime?(random_number)).to be Prime.prime?(random_number)
			end
		end
	end
end
