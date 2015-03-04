#!/usr/bin/ruby

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?


require_relative 'prime_numbers.rb'

primes = Prime_Numbers.new
#guess that there will be at least 10001 primes in the first 2M numbers
n = 2000000
primeval = 10001
primenumbers = Array.new()
until primenumbers.length >= primeval
	primenumbers =  primes.list(n)
	if primenumbers.length >= primeval
		puts primenumbers[primeval-1]
		break
	else
		n += 1000000
	end
end
