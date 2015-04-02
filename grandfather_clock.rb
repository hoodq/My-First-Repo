def grandfather_clock &block
	#make a variable that keeps track of the current hour we are on today
	#set to an instance variable so that we can use it in the block that we later call to the grandfather_clock method
	@num_hours = Time.new.hour

	#convert from 0 to 23, to 1am to 12pm and then 1pm to 12am
	if @num_hours > 12
		@num_hours -= 12
	elsif @num_hours == 0
		@num_hours = 12
	end 

	#take that variable and execute the block that many times with the times method
	@num_hours.times do
		block.call
	end
end

string1 = "DING"
string2 = "DONG"

grandfather_clock do
	while @num_hours > 0
		if @num_hours % 2 != 0 
			puts string1
		else
			puts string2
		end
		@num_hours -= 1
	end
end
