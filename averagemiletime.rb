#starts with an amount of time in minutes and seconds and shows you what one third of this number is in the same colon format
#the context is finding the average mile time when giving the program the time of a 5 kilometer race
pr = '17:18'#initial value pr stands for personal record, as in my personal record for the 5k in high school

minAndSec = pr.scan(/\d+/)
#scans the pr string for groups of one digit or more and makes the array [17, 18]
timeInSec = minAndSec[0].to_i * 60 + minAndSec[1].to_i
#converts this array in minutes by converting the first element to an integer and multiplying it by sixty and then adding the second element (remaining seconds)
avgMileMin = (timeInSec / 60.0) / 3.0
#this gets the minutes portion of the average mile by dividing the time in seconds by the float 60.0 instead of int 60 and then again by float 3.0 because we are interested in a third of the race
#leaves the decimal to be converted into minutes after
stringMile = avgMileMin.to_s
#converts this decimal value to a string for further manipulation
stringMileSplit = stringMile.split('.')
#takes the string decimal value and splits it into two elements, one to the left, and one to the right of the decimal point
avgMileDecimal = ".#{stringMileSplit[1]}"
#this adds on a . before the number after the decimal since this went away due to the split method
avgMileSec = (avgMileDecimal.to_f * 60).to_i
#converts the string value back to a float and then multiplies it by int 60 and then drops the remaining decimals to get the value in terms of seconds
avgMile = "#{avgMileMin.to_i}:#{avgMileSec}"
#concatenates the mile minute value and second value with a colon in between to put it in proper time format
puts "My 5k time in high school cross country was a #{pr} with an average mile time of #{avgMile}"
#lists out both values in a sentence