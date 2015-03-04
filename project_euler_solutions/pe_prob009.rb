#!/usr/bin/ruby

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a**2 + b**2 = c**2

# For example, 3**2 + 4**2 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

n = 500000
i=0
a = 0
b = 0
c = 0
num_list = Array.new(n){i+=1}
list_of_squares = Array.new()
num_list.each_index{|i|
	if (num_list[i]**(0.5))%1 == 0
		list_of_squares.push(num_list[i])
	end
}
list_of_squares.each_index{|i|
	for k in i...list_of_squares.length
		if list_of_squares.index(list_of_squares[i] + list_of_squares[k]) != nil
			#puts list_of_squares[i] + list_of_squares[k]
			a = list_of_squares[i]**(0.5)
			b = list_of_squares[k]**(0.5)
			c = (list_of_squares[i] + list_of_squares[k])**(0.5)
			#puts a.to_s + ", " + b.to_s + "," + c.to_s
			if (a + b + c) == 1000
				break
			end
		end
	end
}
#puts list_of_squares
puts a
puts b
puts c
puts a*b*c