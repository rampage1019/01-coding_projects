#!/usr/bin/ruby
class Prime_Numbers
	def list(n)
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
		return primes
	end
end
primes = Prime_Numbers.new
primenumbers =  primes.list(2000000)
sum = 0
primenumbers.each_index{ |i| sum +=i if primenumbers[i] == true}
puts sum

#old unused code i found interesting
		#primes.each_index { |i|
			# tmp = Array.new
			# sum = 0
			# tmp = i.to_s.chars.map(&:to_i)
			# tmp.each { |a| sum+=a }
			#if i%2 == 0 #|| sum%3 == 0 || tmp[tmp.length-1] == 5
			#	primes[i] = false
			#end
		#}