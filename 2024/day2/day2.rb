#!/usr/bin/env ruby

l = STDIN.readlines.map {|line| line.split.map(&:to_i)}

# part 1
puts l.select { |r|
  r.each_cons(2).all? { |x, y| y - x <= 3 && y - x > 0 } ||
  r.each_cons(2).all? { |x, y| x - y <= 3 && x - y > 0 }
}.size

# part 2
puts l.select { |r|
  r.each_cons(2).all? { |x, y| y - x <= 3 && y - x > 0 } ||
  r.each_cons(2).all? { |x, y| x - y <= 3 && x - y > 0 } ||
  (0...r.size).any? do |i|
    (r[0...i] + r[(i+1)..-1]).each_cons(2).all? { |x, y| y - x <= 3 && y - x > 0 } ||
    (r[0...i] + r[(i+1)..-1]).each_cons(2).all? { |x, y| x - y <= 3 && x - y > 0 }
  end
}.size
