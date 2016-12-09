#!/usr/bin/env lua

-- Create a program that prompts for your name and 
-- prints a greeting using your name
-- Example Output
-- 		What is your name? Brian
-- 		Hello, Brian, nice to meet you!
-- Constraint
--		Keep the input, string concatenation, and output separate.

-- Input
io.write("What is your name? ")
input = io.read("*line")
-- Process
output = "Hello, "..input..", nice to meet you!"
-- Output
print(output)
