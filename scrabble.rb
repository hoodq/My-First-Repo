#gives the scrabble score of the inputted word

class ScrabbleWord
	attr_reader :word

	def initialize(word)
		@word = word.downcase
	end

	def score
		letter_points = {'a' => 1, 'b' => 3, 'c' => 3, 'd' => 2, 'e' => 1, 'f' => 4,
				 'g' => 2, 'h' => 4, 'i' => 1, 'j' => 8, 'k' => 5, 'l' => 1,
				 'm' => 3, 'n' => 1, 'o' => 1, 'p' => 3, 'q' => 10, 'r' => 1,
				 's' => 1, 't' => 1, 'u' => 1, 'v' => 4, 'w' => 4, 'x' => 8,
				 'y' => 4, 'z' => 10}
		total = 0
		
		@word.each_char do |letter|
			total += letter_points[letter]
		end
		total
	end

	def point_denominations
		letter_denominations = Hash.new(0)
		letter_points = {'a' => 1, 'b' => 3, 'c' => 3, 'd' => 2, 'e' => 1, 'f' => 4,
				 'g' => 2, 'h' => 4, 'i' => 1, 'j' => 8, 'k' => 5, 'l' => 1,
				 'm' => 3, 'n' => 1, 'o' => 1, 'p' => 3, 'q' => 10, 'r' => 1,
				 's' => 1, 't' => 1, 'u' => 1, 'v' => 4, 'w' => 4, 'x' => 8,
				 'y' => 4, 'z' => 10}
		
		@word.each_char do |letter|
			letter_denominations[letter] += letter_points[letter]
		end
		puts letter_denominations
	end

	def to_s
		"#{@word} has a score of #{score} and point denomination"
	end
end

turn1 = ScrabbleWord.new("ptarmigan")
turn1.point_denominations