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

	it "has a string representation"

	it "has point denominations" do
		@turn1.point_denominations.should == {'p'=>3, 't'=>1, 'a'=>2, 'r'=>1, 'm'=>3, 'i'=>1, 'g'=>2, 'n'=>1}
	end

	it "has a greater score"
end