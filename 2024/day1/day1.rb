#!/usr/bin/env ruby
l = STDIN.readlines.map { |line| line.split.map(&:to_i) }

# part 1
puts l.transpose.map(&:sort).transpose.map {|p| p.reduce(:-).abs}.sum

# part 2
a, b = l.transpose
puts a.map {|x| x * b.count(x)}.sum
