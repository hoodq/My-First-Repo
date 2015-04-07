#Which Harry Potter character are you?
#Asks the user five yes or no questions and depending on answers, matches the person up with one of the listed Harry Potter characters

#Harry, Ron, Hermione

#-------------------------------------------------------------------------------------------------------
harry = 0
hermione = 0
ron = 0

puts "Please answer questions in a 'yes' or 'no' format"
puts ''
#as it stands, if the user types in anything other than 'yes', program interprets it as a 'no'
puts "Do people describe you as intelligent?"
answer = gets.chomp.downcase
if answer == 'yes'
	hermione += 1
else
	ron += 1
end

puts "Would you rather fight a dragon than learn more about Gilly Weed?"
answer = gets.chomp.downcase
if answer == 'yes'
	harry += 1
else
	hermione += 1
end

puts "Are spiders scarier than demeantors?"
answer = gets.chomp.downcase
if answer == 'yes'
	ron += 1
else
	harry += 1
end

puts "Would you want a stag as an animagious over a cat?"
answer = gets.chomp.downcase
if answer == 'yes'
	harry += 1
else
	hermione += 1
end

#fixed the if logic structure to display the proper results
if (harry > ron) && (harry > hermione)
	puts "You're Harry!"
elsif (hermione > ron) && (hermione > harry)
	puts "You're Hermione!"
elsif (ron > harry) && (ron > hermione)
	puts "You're Ron!"
else
	puts "You didn't match with Harry, Ron, or Hermione"
end