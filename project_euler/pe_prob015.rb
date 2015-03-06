#!/usr/bin/ruby



# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 
#6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?

#Struct.new("node", :index, :x_loc, :y_loc)
node = Struct.new(:index, :x_loc, :y_loc)do end

class Pathfinder
	def a_star(d)
		#returns largest palindrome produce made of two d digit numbers
		
		return 
	end
	def grid(l)
	include node
	#node = Struct.new(:index, :x_loc, :y_loc)do end
		number_of_nodes = l**2+2*l+1
		nodes = Array.new
		x = 0
		y = 0
		index = 1
		until y > l
			until x > l
				nodes.push(node.new(index,x,y))
				x += 1
				index += 1
			end
			y += 1
		end
		puts nodes
		return
	end
end

# n = node.new(1,1,1)
# puts n
graph = Pathfinder.new
nodes = graph.grid(2)