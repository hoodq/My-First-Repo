require_relative 'scrabble'
require_relative 'spec_helper'

describe ScrabbleWord do
	before do
		@turn1 = ScrabbleWord.new('Ptarmagin')
		@turn2 = ScrabbleWord.new('Serendipity')
		$stdout = StringIO.new
	end

	it "has an initial value in lowercase letters" do
		@turn1.word.should == 'ptarmagin'
	end

	it "has a score of" do
		@turn1.score.should == 14
	end

	it "has a string representation" do
		@turn1.to_s.should == "ptarmagin has a score of 14"
	end

	it "has a greater score" do
		@turn1.score < @turn1.score
	end
end