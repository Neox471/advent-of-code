# Read file input and split each line
input = File.read("advent-of-code_input.txt").split("\n")
# If-loop for task 1
def answer_1(input)
    # Set score to 0 so we can use variable in 2 different methods
    @score = 0
    # Iterate array and calculate score
    input.each do |result|
        if result == "A X"
            @score = @score + 4
        elsif result == "A Y"
            @score = @score + 8
        elsif result == "A Z"
            @score = @score + 3
        elsif result == "B X"
            @score = @score + 1
        elsif result == "B Y"
            @score = @score + 5
        elsif result == "B Z"
            @score = @score + 9
        elsif result == "C X"
            @score = @score + 7
        elsif result == "C Y"
            @score = @score + 2
        else result == "C Z"
            @score = @score + 6
        end
    end
    p "Total score acording to task 1: #{@score}"
end
# If-loop for task 2
def answer_2(input)
    # Set score to 0 so we can use variable in 2 different methods
    @score = 0
    # Iterate array and calculate score
    input.each do |result|
        if result == "A X"
            @score = @score + 3
        elsif result == "A Y"
            @score = @score + 4
        elsif result == "A Z"
            @score = @score + 8
        elsif result == "B X"
            @score = @score + 1
        elsif result == "B Y"
            @score = @score + 5
        elsif result == "B Z"
            @score = @score + 9
        elsif result == "C X"
            @score = @score + 2
        elsif result == "C Y"
            @score = @score + 6
        else result == "C Z"
            @score = @score + 7
        end
    end
    p "Total score acording to task 2: #{@score}"
end
# Call methods
answer_1(input)
answer_2(input)