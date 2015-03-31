def romanNumeral_to_num(romanString)

#----------------if not a roman numeral
#make the input all uppercase
	string = romanString.upcase
#if string contains characters that aren't I, V, X, C, L, M, or D then ask for another input or end the method (case is more efficient?)
	if string.include?("A") || string.include?("B") || string.include?("E") || string.include?("F") || string.include?("G") || string.include?("H") || string.include?("J") || string.include?("K") || string.include?("N") || string.include?("O") || string.include?("P") || string.include?("Q") || string.include?("R") || string.include?("S") || string.include?("T") || string.include?("U") || string.include?("W") || string.include?("Y") || string.include?("Z")
		puts "Not a valid roman numeral"
		input = gets.chomp
		romanNumeral_to_num(input)	
	end

#or if there are 4 or more I's in a row, or 2 V's, or 4 X's, or 2 L's, or 4 C's, or 2 D's in a row
	if string.include?("IIII") || string.include?("VV") || string.include?("XXXX") || string.include?("LL") || string.include?("CCCC") || string.include?("DD")
		puts "Not a valid roman numeral"
		input = gets.chomp
		romanNumeral_to_num(input)	
	end
	
#also no IL's, VL's, IC's, VC's, LC's, ID's, VD's, XD's, LD's, IM's, VM's, XM's, LM's, DM's
	if string.include?("IL") || string.include?("VL") || string.include?("IC") || string.include?("VC") || string.include?("LC") || string.include?("ID") || string.include?("VD") || string.include?("XD") || string.include?("LD") || string.include?("IM") || string.include?("VM") || string.include?("XM") || string.include?("LM") || string.include?("DM")
		puts "Not a valid roman numeral"
		input = gets.chomp
		romanNumeral_to_num(input)	
	end

#----------------if proper roman numeral
#get a string
#make a hash that pairs each roman numeral with its numerical value
#make an initial count variable starting at 0
#go through it character by character
#at each character, retrieve the apropriate number value from the hash, then add it to the count
#then return the count

end

romanNumeral_to_num("IP")

