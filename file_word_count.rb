#reads a file and stores each word (set to lowercase) used and the number of times that word is used in a hash
#then it prompts the user for a word to search and then says the number of times that word appears in the file

def word_count_tracker
  a_file = File.open('words.txt')
  words = Hash.new(0)
  a_file.each do |line|
  	array = line_to_array(line)
  	array.each do |word|
  	  words[word.downcase] += 1	
  	end
  end
  a_file.close
  puts "please enter the desired word"
  word = gets.chomp.downcase
  puts "#{word} appears #{words[word]} time(s)"
  puts "\n#{words}" 
end        

def line_to_array line
  line.scan(/\w+/)
end


def word_count_tracker
  a_file = File.open('words.txt')
  letters = Hash.new(0)
  a_file.each do |line|
    line.each do |letter|
      letters[letter.downcase] += 1 
    end
  end
  a_file.close
  puts "please enter the desired word"
  word = gets.chomp.downcase
  puts "#{word} appears #{words[word]} time(s)"
  puts "\n#{words}" 
end        

def line_to_array line
  line.scan(/\w+/)
end

word_count_tracker
