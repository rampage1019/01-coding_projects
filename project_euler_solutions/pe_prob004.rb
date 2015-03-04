#!/usr/bin/ruby

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

class General_Math
	def palindrome_product(d)
		#returns largest palindrome produce made of two d digit numbers
		startnum = 1*10**(d-1)
		palindromelist = Array.new()
		i = 1*10**d - 1
		k = 0
		num = 0;
		until i <= startnum
			k = 0
			until k >= (i-startnum+1)
				num = i * (i-k)
				tmp = Array.new
				tmp = num.to_s.chars.map(&:to_i)
				if palindrome(num) == true
					palindromelist.push(num)
				end
				k += 1
			end
			i = i - 1			
		end
		return palindromelist
	end
	def palindrome(n)
		palindrome = false
		tmp = Array.new
		tmp = n.to_s.chars.map(&:to_i)
		g = 0
		check = 0
		while g < tmp.length/2
			if tmp[g] != tmp[tmp.length-1-g]
				break
			else
				check += 1
			end
			g += 1
		end
		if check >= tmp.length/2
			palindrome = true
		end
		return palindrome
	end
end

palindrome = General_Math.new
palindromeproduct = palindrome.palindrome_product(3)
puts palindromeproduct.max