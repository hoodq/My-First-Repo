#my recreation of the already-existing sort method for arrays
#takes an unsorted array as input and returns the sorted version 
def sorting(array)
	#start with an empty array where newly sorted elements from the input will go
	sorted_array = []

	#while there is at least one element in the passed in array execute the loop
	while array.length > 0
		#start with these initial values
		count = 1
		minIndex = 0
		#this ensures that count will never exceed the number of elements in the inputted array
		while count < array.length
			#compare using index values of the array elements starting with array[0] and array[1]
			#compares words in their lowercase form, otherwise capitalized letters would come before lowercase ones, despite alphabetical order
			#the downcase method just temporarily changes the value of the element during comparison, then they retain their capitalized form in the output
			if array[minIndex].downcase > array[count].downcase
				#if the preceding element of the inputted array is a word that comes after the following element
				#set minIndex (the smallest index value of the array) equal to the count value
				minIndex = count
			end
			#add 1 to count so that the while loop will eventually finish
			count += 1
		end
		#now, the array element with minIndex is the smallest value so it is safe to push it to our sorted_array
		sorted_array.push(array[minIndex])
		#then delete the smallest element from the inputted array so that the next iteration will be the next smallest element
		array.delete_at(minIndex)
	end
	puts sorted_array
end

pokemon = %w(abra kadabra Alakazam gengar jynx Snorlax ivysaur dodrio)
sorting(pokemon)
# => abra alakazam dodrio gengar ivysaur jynx kadabra snorlax

puts pokemon.sort
# => abra alakazam dodrio gengar ivysaur jynx kadabra snorlax



=begin
#a shuffle method that returns a new array with the elements of the inputted array in a random order
def shuffle(array)

	#start with an empty array where the random arrangement of elements will go 
	shuffled_array = []

	#while there is at least one element in the array given by the user
	while array.length > 0

		#take a random number between 0 and the length of the array (inclusive) and set it to a randIndex value
		randIndex = rand(array.length)
		#now push the element with the corresponding randIndex index value to the collection array
		shuffled_array.push(array[randIndex])
		#delete this element from the original array to ensure that there won't be any duplicate elements in the final array
		array.delete_at(randIndex)
	end
	puts shuffled_array
end

array = %w(a b c d e f g h i j k l m n)
shuffle(array)
=end
