#!/usr/bin/ruby

# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

# (Please note that the palindromic number, in either base, may not include leading zeros.)


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
		if n.to_s == n.to_s.reverse! then return true else return false end
	end
end

palindrome = General_Math.new
i=0
num_list = Array.new(1000000){i+=1}
pal_list = Array.new()
num_list.each_index{|i|
	if palindrome.palindrome(num_list[i]) == true
		pal_list.push(num_list[i]) if palindrome.palindrome(num_list[i].to_s(2).to_i) == true
	end
}
sum = 0
pal_list.each_index{ |i| sum += pal_list[i]}
puts pal_list
print "\n\n" + sum.to_s