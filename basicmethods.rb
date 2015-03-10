def tempConvert(degrees_C=0)
#takes one parameter namely, degrees celcius with a default value of 0
	degrees_F = degrees_C * 9/5 + 32
	#performs the teperature conversion calculation and stors the degrees farenheit value into the variable degrees_F
	"#{degrees_C} degrees celcius is equal to #{degrees_F} degrees farenheit" #articulates all that this method has accomplished
end

puts tempConvert #makes use of the default value of 0 degrees celcius
puts tempConvert(20) #converts 20 degrees celcius

def avgMileTime(distance, time)
#parameters are distance (in miles) and time (in minutes)
	pace = time.to_f / distance.to_f
	#figues out the average mile time in float format, now our goal is to convert it into x:xx time colon format
	timeArray = pace.to_s.scan(/\d+/)
	#converts the pace variable to a string to perform manipulations
	#then it scans the string for one or more digits and then turns it into an array with the minutes digit as the first element and the seconds digit(s) as the second element
	minutes = timeArray[0]
	#assigns the minutes element to the variable minutes
	seconds = timeArray[1]
	#assigns the seconds element to the variable seconds
	seconds = '.' + seconds
	#we need to add the decimal point to the beginning of the seconds number since it was lost during our above scan method
	"The average mile time needed to achieve your goal is: #{timeArray[0]} minutes and #{(seconds.to_f * 60).to_i} seconds"
	#articulates our final output and converts the seconds element to a float so that it can be multiplied by 60 and converted into a true seconds value
	#then we take this whole expression and convert it into an integer value to chop off any unwanted numbers after the decimal
end

puts avgMileTime(26.2, 180) #26.2 miles (or a marathon) in 180 minutes
puts avgMileTime(100, 24 * 60) #100 miles in 24 hours