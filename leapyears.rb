#gives the number of leap years between two years inputted by the user and also lists out these leap years
#get two years from user
puts "please input a year"
year1 = gets.chomp
puts "and input another year after the first one"
year2 = gets.chomp
year1 = year1.to_i
year2 = year2.to_i	
leapyears = []
#check to see that year2 > year1
if year1 <= year2
	#loop through them and do our division checks
	while year1 <= year2
	#if it's a leap year, push it to an initially empty array	
		if (year1 % 400 == 0) || (year1 % 4 == 0 && year1 % 100 != 0) 
			leapyears.push(year1)
		end
		year1 += 1
	end	
	#final display message if user followed the instructions
	puts "There are #{leapyears.length} leap years between your inputted years: #{leapyears.join(", ")}"
else
	#displayed if user failed to follow the initial instructions
	puts "Please follow the instructions"
end