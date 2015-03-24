#introduces the concept of putting a smaller roman numeral before a larger one to perform subtraction
#e.g. IV is now implemented versus IIII for the value 4

def romanNumeral(num=309)
	
	#start with an empty array for collecting the various roman numeral strings along the way
	romanString = []

	if num > 1000
		#if the inputed number is greater than 1000, begin with the largest roman numeral "M"
		mstring = "M" * (num / 1000)
		#to get the number of "M" characters needed, divide the inputted value by the integer 1000 to get the integer value, giving the number of 
		#thousands in the original input
		#then multiply the character "M" by this number to get the proper number of "M" characters and then push them to the collection array
		romanString.push(mstring)
		#now set the inputted num equal to the remainder after the 1000s have been taken away for continued parsing 
		num = num % 1000
	end

	#because of the new ways of subtraction with a smaller character before a larger one, a couple special cases are addressed here..
	#900 is now represented as "CM" instead of "XCCCC" which would have been okay before. So "CM" is explicitly defined and the same goes of "CD"
	if num >= 900
		endstring = "CM"

		#afterwards, we push the value to our collection array just like before and then further subtract from the num value for continued parsing 
		romanString.push(endstring)
		num = num - 900
	elsif num >= 400
		endstring = "CD"
		romanString.push(endstring)
		num = num - 400
	end	

	#use the exact same procedure for the individual "D" and "C" characters
	if num > 500
		dstring = "D" * (num / 500)
		romanString.push(dstring)
		num = num % 500
	end

	if num > 100
		cstring = "C" * (num / 100)
		romanString.push(cstring)
		num = num % 100
	end

	#we now highlight the special cases of the 10's place by explicitly defining "XC" and "XL" for 90 and 40 respectively
	if num >= 90
		endstring = "XC"
		romanString.push(endstring)
		num = num - 90
	elsif num >= 40
		endstring = "XL"
		romanString.push(endstring)
		num = num - 40
	end

	if num > 50
		lstring = "L" * (num / 50)
		romanString.push(lstring)
		num = num % 50
	end	

	if num > 10
		xstring = "X" * (num / 10)
		romanString.push(xstring)
		num = num % 10
	end

	#when we get to the special cases of 9 and 4, this signifies the end of the string so the logic says...
	#if the num value that's left at this point is equal to 9 or 4, push "IX" or "IV" to the array and set num equal to 0
	#we set it to 0 so that it will not go through the final conditional test and so no extra "I" characters will be added on
	if num == 9
		endstring = "IX"
		romanString.push(endstring)
		num = 0
	elsif num == 4
		endstring = "IV"
		romanString.push(endstring)
		num = 0
	end

	if num > 5
		vstring = "V" * (num / 5)
		romanString.push(vstring)
		num = num % 5
	end

	istring = "I" * num
	romanString.push(istring)

	#the final step displays the array with the join method, connecting all the roman numerals onto one continuous like with no space between them
	puts romanString.join('')
end

romanNumeral(922)











#start with only numerals I, V, and X for simplicity sake
#parse the number for tens and fives just like last program
#if num input is 1 through 3
#if it is 4
#if it is 5 through 8
#if it is 9
#if it is 10

