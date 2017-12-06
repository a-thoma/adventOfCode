#! /usr/bin/env ruby

# d2p2.rb

# This is my implementation for Advent of Code: Day 2 (part 1)
# (See: https://adventofcode.com/2017/day/2)

# function to compute the quotient of the two evenly-divisible numbers
# in each line of our input, and return their sum
def checkSum(array)
	for i in 0...array.length
		for j in (i + 1)...array.length
			# do stuff
		end
	end
end

# function to get our input
# this could hypothetically be handled better/more efficiently by using 
# scan(/\w+/) instead of two splits on \n and \t
def getInput(array)
    # handle bad input
    if ARGV[0] == nil
        printf("Bad input\n")
        printf("Usage: d2p1.rb '<numbers, cols by \\t, rows by \\n>'\n")
        exit
    end
    temp = ARGV[0].split(/\n/)
    for i in 0...temp.length
        array[i] = temp[i].split(/\t/)
    end
    for i in 0...array.length
        for j in 0...array[i].length
            array[i][j] = array[i][j].to_i
        end
    end
end

# initialize a 2d array to hold our data
arr = Array.new() {Array.new()}

# read in our input
getInput(arr)

# perform our operation and print the result
checkSum(arr)

