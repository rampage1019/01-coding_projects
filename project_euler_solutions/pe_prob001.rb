#!/usr/bin/ruby
mult35 = Array.new(1000) {|i| true}
mult35.each_index { |i| mult35[i] = false if i%3 !=0 && i%5 != 0}
sum = 0
mult35.each_index{ |i| sum +=i if mult35[i] == true}
puts sum
