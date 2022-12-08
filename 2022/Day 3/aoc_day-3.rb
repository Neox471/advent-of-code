# Read file input and split each line
input = File.read("advent-of-code_input.txt").split("\n")
# Define how much score each letter is worth
LETTER_SCORES = {
  'a' => 1,
  'b' => 2,
  'c' => 3,
  'd' => 4,
  'e' => 5,
  'f' => 6,
  'g' => 7,
  'h' => 8,
  'i' => 9,
  'j' => 10,
  'k' => 11,
  'l' => 12,
  'm' => 13,
  'n' => 14,
  'o' => 15,
  'p' => 16,
  'q' => 17,
  'r' => 18,
  's' => 19,
  't' => 20,
  'u' => 21,
  'v' => 22,
  'w' => 23,
  'x' => 24,
  'y' => 25,
  'z' => 26, 
  'A' => 27,
  'B' => 28,
  'C' => 29,
  'D' => 30,
  'E' => 31,
  'F' => 32,
  'G' => 33,
  'H' => 34,
  'I' => 35,
  'J' => 36,
  'K' => 37,
  'L' => 38,
  'M' => 39,
  'N' => 40,
  'O' => 41,
  'P' => 42,
  'Q' => 43,
  'R' => 44,
  'S' => 45,
  'T' => 46,
  'U' => 47,
  'V' => 48,
  'W' => 49,
  'X' => 50,
  'Y' => 51,
  'Z' => 52, 
}
def answer_1(input)
score = 0
# Each line represents a rucksack so we iterate trough each rucksack
    input.each do |rucksack|
        # Calculate half of each rucksack and build first and second compartment from it
        half = (rucksack.length / 2)
        first_compartment = rucksack[0..half-1]
        second_compartment = rucksack[half..rucksack.length]
        # Iterate each letter in first compartment and look if it is included in second compartment
        first_compartment.split('').each do |letter|
            if second_compartment.include?(letter)
                score += LETTER_SCORES[letter]

                break
            end
        end
    end
p "Score acording to task 1: #{score}"
end

def answer_2(input)
group_of_three = []
groups = []
i = 0
score = 0
input.each_with_index do |example, index|
    if i < 3
        group_of_three = group_of_three.push(example)
        i += 1
        if index == input.size - 1
            groups = groups.push(group_of_three)
        end
    elsif i == 3
        groups = groups.push(group_of_three)
        i = 1
        group_of_three = []
        group_of_three = group_of_three.push(example)
    end
end
    groups.each do |group|
        group.first().split('').each do |letter|
            if group[1].include?(letter) && group[2].include?(letter)
                score += LETTER_SCORES[letter]

                break
            end
        end
    end
p "Score acording to task 2: #{score}"
end
answer_1(input)
answer_2(input)