#!/usr/bin/ruby
F = Array.new
F.push(1,1)
until F[F.length-1].to_s.size % 1000 == 0
	F.push(F[F.length-1] + F[F.length-2])
end
puts F.length