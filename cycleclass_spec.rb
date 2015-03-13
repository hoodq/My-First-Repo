require_relative 'spec_helper'
require_relative 'cycleclass'

describe Cycle do
	before do
		@bike1 = Cycle.new("persimmon", 2)
	end

	it "has an initial color in all upper case letters" do
		@bike1.color.should == "PERSIMMON"
	end

	it "has an initial number of wheels" do
		@bike1.numWheels.should == 2
	end

	it "has a string value" do
		@bike1.to_s.should == "This cycle is currently PERSIMMON and has 2 wheels!"

	end

	it "adds 1 wheel" do
		@bike1.addWheel
		@bike1.numWheels.should == 3
	end

	it "takes away 1 wheel" do
		@bike1.takeWheel
		@bike1.numWheels.should == 1
	end
end