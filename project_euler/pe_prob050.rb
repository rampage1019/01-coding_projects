#!/usr/bin/ruby

# The prime 41, can be written as the sum of six consecutive primes:
# 41 = 2 + 3 + 5 + 7 + 11 + 13

# This is the longest sum of consecutive primes that adds to a prime below one-hundred.

# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

# Which prime, below one-million, can be written as the sum of the most consecutive primes?

require_relative 'prime_numbers.rb'

primes = Prime_Numbers.new
primenumbers =  primes.list(50)
primesum = Array.new
primesum.push(0)
sum = 0
primenumbers.each_index{ |i|
		sum +=i 
		primesum.push(sum)
	}
puts primesum
