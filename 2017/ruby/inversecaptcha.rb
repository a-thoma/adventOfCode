#! /usr/bin/env ruby

# inversecaptcha.rb

# This is my implementation for Advent of Code: Day 1
# (See: https://adventofcode.com/2017/day/1)

require 'scanf'

# function to find matches and return the sum of their numbers
def matchArr(array)
	result = 0
	for i in 0...(array.length)
		if array[i] == array[(i + 1) % array.length]
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

# make a new array
arr = []

# get our input and throw it into the array
getInput(arr)

# run through the array and return our solution
matchArr(arr)