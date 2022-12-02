# Read file input and split each empty line
input = File.read("advent-of-code_input.txt").split("\n\n")
# Map every item of array to an integer
elves = input.map { |input| input.split("\n").map(&:to_i) }
# Calculate sum of each array
calories_elves = elves.map { |elf| elf.sum}
# Output sum of calories of the top elf [Answer part 1]
p calories_elves.max
# Output sum of calories of the top three elves [Answer part 2]
p calories_elves.sort.last(3).sum
