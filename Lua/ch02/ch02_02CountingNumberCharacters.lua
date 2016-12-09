#!/usr/bin/env lua

-- Create a program that prompts for an input string and 
-- displays output that shows the input string and 
-- the number of characters the string contains.
-- Example Output
--		What is the input string? Homer
--		Homer has 5 characters.
-- Constraints
--		Be sure the output contains the original string.
--		Use a single output statement to construct the output.
--		Use a built-in function of the programming language to determine the length of the string.

-- Input
io.write("What is the input string? ")
input = io.read("*line")

-- Process
--[[
function trim(str)
	-- Trim leading and trailing whitespaces
	return str:match( "^%s*(.-)%s*$" )
end
input = trim(input)
--]]
result = string.len(input)

-- Output
print("\""..input.."\" has "..result.." characters.")