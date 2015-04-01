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
#make a hash that pairs each roman numeral with its numerical value
	roman_hash = {"I" => 1, "IV" => 4, "V" => 5, "IX" => 9, "X" => 10,
				  "XL" => 40, "L" => 50, "XC" => 90, "C" => 100, "CD" => 400,
				  "D" => 500, "CM" => 900, "M" => 1000}
#make an initial count variable starting at 0
	count = 0
#convert string into an array, separating out special cases: IV, IX, XL, XC, CD, and CM
	string_array = Array.new
	
	while string.length > 0
		if string[string.length - 1] == "V"

			if string[string.length - 2] == "I"
				string_array.unshift("IV")
				string = string[0..-3]
				return
			end

		elsif string[string.length - 1] == "X"

			if string[string.length - 2] == "I"
				string_array.unshift("IX")
				string = string[0..-3]
				return
			end

		elsif string[string.length - 1] == "L"

			if string[string.length - 2] == "X"
				string_array.unshift("XL")
				string = string[0..-3]
				return
			end

		elsif string[string.length - 1] == "C"

			if string[string.length - 2] == "X"
				string_array.unshift("XC")
				string = string[0..-3]
				return
			end

		elsif string[string.length - 1] == "D"

			if string[string.length - 2] == "C"
				string_array.unshift("CD")
				string = string[0..-3]
				return
			end

		elsif string[string.length - 1] == "M"

			if string[string.length - 2] == "C"
				string_array.unshift("CM")
				string = string[0..-3]
				return
			end

		else
			string_array.unshift(string[string.length - 1])
			string = string[0..-2]
		end
	end

#now that the string is converted to an array with special roman numeral subtraction cases paired up as elements,
#go through element by element and sum the associated roman_hash point values stored in the count variable defined earlier
	

#then return the count
	string_array
end

puts romanNumeral_to_num("XIX")

