#!/usr/bin/ruby

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

class Prime_Numbers
	def list(n)
		#returns a list of prime numbers up to n
		primes = Array.new(n+1) 
		primes.fill(true)
		primes.each_index { |i| primes[i] = false if i%2 == 0}
		primes[1] = false
		primes[2] = true
		#Sieve of Eratosthenes - http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
		primes.each_index{ |i|
			if i <= Math.sqrt(n+1) && primes[i] == true
				j = i**2
				while j <= n+1
					primes[j] = false
					j+=i
				end
			end
		}		
		primenums = Array.new
		primes.each_index{ |i| primenums.push(i) if primes[i] == true}
		return primenums
	end
	def trial_division(n)
		#returns the prime factors of n
		primefactors = Array.new
		if n == 1 then return primefactors.push(1) end
		primes =  list((n**0.5).to_i + 1)
		primes.each{|p|
			if p**2 > n then break end
			until n % p != 0
				primefactors.push(p)
				n /= p
			end
			}
		if n > 1 then primefactors.push(n) end
		return primefactors
	end
end

primes = Prime_Numbers.new
primefactors = primes.trial_division(600851475143)
puts primefactors.max