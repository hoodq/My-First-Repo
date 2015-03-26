#funny deaf grandma program that only responds to inputs in all caps and gives answers that don't make sense
#returns random year values in the answers of the range of 1930 to 1951 

puts "Ask granny a question or say BYE three times in a row to end your conversation"
#initial input
input = gets.chomp
a = true
while a
	if input != input.upcase
		puts "HUH?! SPEAK UP, SONNY!"
		#if input isn't all uppercase, then grandma can't hear you and it asks for another input
		input = gets.chomp
	elsif (input == input.upcase) && (input != "BYE") 
		year = rand(21) + 1930
		puts "NO, NOT SINCE " + year.to_s + "!"
		#when you answer in all caps a response other than "BYE", grandma talks about how it was "back in her day"
		#then asks for another input
		input = gets.chomp
	elsif input == "BYE"
		puts "I CAN'T HEAR YOU CHILD!"
		input = gets.chomp
		if input == "BYE"
			puts "I STILL CAN'T HEAR YOU CHILD!"
			input = gets.chomp
			if input == "BYE"
				puts "OH, BYE MY SWEET CHILD!"
				#the only way to exit this program is to respond with "BYE" in all caps three times in a row
				#then grandma finally understands and a is set to false and you can now exit the while loop
				a = false
			end
		end
	end
end