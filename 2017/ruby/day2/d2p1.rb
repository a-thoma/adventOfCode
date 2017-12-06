#! /usr/bin/env ruby

# d2p1.rb

# This is my implementation for Advent of Code: Day 2 (part 1)
# (See: https://adventofcode.com/2017/day/2)

# function to compute the difference of the smallest & largest elements of
# each line of our input
def checkSum(array)
    # variable to hold result
    result = 0
    # get max and min, calculate their difference, and add it to result
    for i in 0...array.length
        lo, hi = array[i][0], array[i][0]
        for j in 0...array[i].length
            if array[i][j] > hi
                hi = array[i][j]
            end
            if array[i][j] < lo
                lo = array[i][j]
            end
        end
        result += (hi - lo)
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


# initialize a 2d jagged array to hold our data
arr = Array.new() {Array.new()}

# read in our input
getInput(arr)

# perform our operation and print the result
puts checkSum(arr)