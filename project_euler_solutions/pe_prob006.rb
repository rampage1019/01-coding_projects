#!/usr/bin/ruby

# The sum of the squares of the first ten natural numbers is,
# 1**2 + 2**2 + ... + 10**2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)**2 = 55**2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


i=0
num_list = Array.new(100){i+=1}
sum_of_squares = 0
sum = 0
num_list.each_index{|i| 
	sum += num_list[i] 
	sum_of_squares += num_list[i]**2
	}
difference = sum**2 - sum_of_squares
puts difference