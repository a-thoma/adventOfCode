#! /usr/bin/env ruby

# d1p2.rb

# This is my implementation for Advent of Code: Day 1 (part 2)
# (See: https://adventofcode.com/2017/day/1)

# TODO: implement this
def captchaTwo(array)
	result = 0
	offset = (array.length / 2)
	for i in 0...(array.length)
		if array[i] == array[(i + offset) % array.length]
			result += array[i]
		end
	end
	puts result
end

# function to format and get input from argv
def getInput(array)
	if ARGV[0] == nil
		puts "Bad input"
		exit
	end
	# input is one string, read it in by char, convert to int, and store in
	# array, element-by-element
	ARGV[0].each_byte do |c|
		array << c.chr.to_i
	end
	# puts array
end

# make an array
arr = []

# get the input for the array
getInput(arr)

# perform our new function on rb (TODO: describe it!)
captchaTwo(arr)