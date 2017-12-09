#! /usr/bin/env ruby

# d2p2.rb

# This is my implementation for Advent of Code: Day 2 (part 1)
# (See: https://adventofcode.com/2017/day/2)

# function to compute the quotient of the two evenly-divisible numbers
# in each line of our input, and return their sum
def checkSum(array)
	result = 0
	for i in 0...array.length
		x = 0
		for j in 0...(array[i].length - 1)
			while x < array[i].length
				if (array[i][j] % array[i][x] == 0)
					result += (array[i][j] / array[i][x])
				end
				x += 1
			end
		end
	end
	return result
end

# recursive implementation
# TODO: get this working!
def recursiveSum(array, i, j, x)
	result = 0
	return if i >= array.size
	j = 0 if j == (array[i].size - 1)
	x = 0 if x == array[i].size
	if array[i][j] % array[i][x] != 0
		result += recursiveSum(array, i, j, (x + 1))
	else 
		return (array[i][j] / array[i][x])
	end
	return result
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

# puts arr
# perform our operation and print the result
puts checkSum(arr)
# puts recursiveSum(arr, 0, 0, 1)

