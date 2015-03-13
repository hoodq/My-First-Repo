class Cycle
	attr_reader :numWheels, :color

	def initialize(color, numWheels=1)
		@color = color.upcase
		@numWheels = numWheels
	end

	def addWheel
		@numWheels += 1
	end

	def takeWheel
		@numWheels -= 1
	end

	def to_s
		"This cycle is currently #{@color} and has #{@numWheels} wheels!"
	end
end

bike1 = Cycle.new("red")
bike1.addWheel
bike1.addWheel
puts bike1

bike2 = Cycle.new("green", 7)

bike3 = Cycle.new("yella", 4)

class CycleGroup
	attr_reader :title

	def initialize(title)
		@title = title.upcase
		@numCycles = []
	end

	def addCycle(a_cycle)
		@numCycles.push(a_cycle)
	end

	def takeCycle(a_cycle)
		@numCycles.pop
	end

	def to_s
		"This is the #{@title} group of cycles that currently has #{@numCycles.length} cycles!"
	end
end

group1 = CycleGroup.new("titans")
group1.addCycle(bike1)
group1.addCycle(bike2)
group1.addCycle(bike3)
puts group1.title
puts group1