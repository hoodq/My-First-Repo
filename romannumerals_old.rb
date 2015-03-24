def romanNumeral(num=300)
	
	#start with an empty arry where you will store roman numarals as you parse the num input
	romanString = [] 
	
	if num > 1000

		#if the number is greater than 1000, divide by an integer 1000 to get an integer number of thousands in the input
		#and multiply the string "M", which signifies 1000 in roman numerals, by this number to get the correct number of M's for each 1000
		mstring = "M" * (num / 1000)

		#change the value of the input num by subtracting the thousands value from it so that we can further check the rest of the roman numerals
		#until num equals zero when we're through with checking
		num = num - (num / 1000) * 1000

		#and finally push this string to the collection array and continue through the rest of the roman numerals in this mannor
		romanString.push(mstring)
	end

	if num > 500
		dstring = "D" * (num / 500)
		num = num - (num / 500) * 500
		romanString.push(dstring)
	end

	if num > 100
		cstring = "C" * (num / 100)
		num = num - (num / 100) * 100
		romanString.push(cstring)
	end	

	if num > 50
		lstring = "L" * (num / 50)
		num = num - (num / 50) * 50
		romanString.push(lstring)
	end	

	if num > 10
		xstring = "X" * (num / 10)
		num = num - (num / 10) * 10
		romanString.push(xstring)
	end	

	if num > 5
		vstring = "V" * (num / 5)
		num = num - (num / 5) * 5
		romanString.push(vstring)
	end	

	#once you've gone all the way through, finishing with the 5's, the leftover number will be in the range 0 to 4
	#so we can simply multiply the "I" character by num and push it to the collection array to finish our roman numeral
	istring = "I" * num
	romanString.push(istring)

	#display the result by joining all the roman numerals on the same line
	puts romanString.join('')
end


romanNumeral(3777)
