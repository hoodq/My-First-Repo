#reads a file and stores each word (set to lowercase) used and the number of times that word is used in a hash

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
  words.each do |word, count|
    puts "#{word}: #{count}"
  end
end

def line_to_array line
  line.split(/[^\w+$]/)
end

word_count_tracker