def romanNumeral(num=309)

	romanString = []

	if num >= 1000
		mstring = "M" * (num / 1000)
		romanString.push(mstring)
		num = num % 1000
	end

	if num >= 900
		endstring = "CM" 
		romanString.push(endstring)
		num = num - 900
	end	

	if num >= 500
		dstring = "D" * (num / 500)
		romanString.push(dstring)
		num = num % 500
	end

	if num >= 400
		endstring = "CD"
		romanString.push(endstring)
		num = num - 400
	end

	if num >= 100
		cstring = "C" * (num / 100)
		romanString.push(cstring)
		num = num % 100
	end

	if num >= 90
		endstring = "XC"
		romanString.push(endstring)
		num = num - 90
	end

	if num >= 50
		lstring = "L" * (num / 50)
		romanString.push(lstring)
		num = num % 50
	end	

	if num >= 40
		endstring = "XL"
		romanString.push(endstring)
		num = num - 40
	end

	if num >= 10
		xstring = "X" * (num / 10)
		romanString.push(xstring)
		num = num % 10
	end

	if num == 9
		endstring = "IX"
		romanString.push(endstring)
		num = 0
	end

	if num >= 5
		vstring = "V" * (num / 5)
		romanString.push(vstring)
		num = num % 5
	end

	if num == 4
		endstring = "IV"
		romanString.push(endstring)
		num = 0
	end

	istring = "I" * num
	romanString.push(istring)
	puts romanString.join('')
end

romanNumeral(9999)


