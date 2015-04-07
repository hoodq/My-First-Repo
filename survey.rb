#Which Harry Potter character are you?
#Asks the user five yes or no questions and depending on answers, matches the person up with one of the listed Harry Potter characters

#Harry, Ron, Hermione

#-------------------------------------------------------------------------------------------------------
harry_points = 0
hermione_points = 0
ron_points = 0

puts "Do people describe you as intelligent?"
answer = gets.chomp.downcase
if answer == 'yes'
	hermione_points += 1
else
	ron_points += 1
end

puts "Would you rather fight a dragon than learn more about Gilly Weed?"
answer = gets.chomp.downcase
if answer == 'yes'
	harry_points += 1
else
	hermione_points += 1
end

puts "Are spiders scarier than demeantors?"
answer = gets.chomp.downcase
if answer == 'yes'
	ron_points += 1
else
	harry_points += 1
end

if harry_points > (ron_points && hermione_points)
	puts "You're Harry!"
elsif hermione_points > (ron_points && harry_points)
	puts "You're Hermione!"
elsif ron_points > (harry_points && hermione_points)
	puts "You're Ron!"
else
	puts "You didn't match with Harry, Ron, or Hermione"
end