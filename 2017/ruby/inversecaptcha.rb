#! /usr/bin/env ruby

# inversecaptcha.rb

# This is my implementation for Advent of Code: Day 1
# (See: https://adventofcode.com/2017/day/1)

require 'scanf'

# function to find matches and return the sum of their numbers
def matchArr(array)
	for i in 0...(array.length + 1)
		if i % array.length != 1
			if array[i] == array[(i + 1) % array.length]
				result += 1
			end
		end 
	end
end

# function to format and get input from argv
def getInput(array)
	# input is one bignum, need to convert it
	# string > arr[strings] > arr[ints]?
end

# make a new array
arr = []

# get our input and throw it into the array
getInput(arr)

# puts arr

# run through the array and return our solution
# matchArr(arr)