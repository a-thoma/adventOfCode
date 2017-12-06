#! /usr/bin/env ruby

# d2p1.rb

# This is my implementation for Advent of Code: Day 2 (part 1)
# (See: https://adventofcode.com/2017/day/2)

# function to compute the sum of the smallest & largest elements of
# each line of our input
def checkSum(array)
    result = 0
    # do some stuff here
    for i in 0...(array.length)
        lo, hi = array[i][0]
        for j in 0...(array[i].length)
            if array[i][j] < lo
                lo = array[i][j]
            end
            if array[i][j] > hi
                hi = array[i][j]
            end
        end
        result += (lo + hi)
    end
    return result
end

# function to get our input
def getInput(array)
    # handle bad input
    if ARGV[0] == nil
        printf("Bad input\n")
        printf("Usage: d2p1.rb '<numbers>'\n")
        exit
    end
    temp = ARGV[0].split(/\t/)
    puts temp.class

end


# initialize a 2d jagged array to hold our data
arr = Array.new() {Array.new()}

# read in our input
getInput(arr)

# perform our operation and print the result
# puts checkSum(arr)