require_relative 'fixed_array'
require 'rspec'
include RSpec

describe FixedArray do

	before(:each) do
		@array = FixedArray.new(10)
		@array_two = FixedArray.new(20)
	end

	describe "#initialize" do

		it "raises argument error for negetive numbers" do
			expect{FixedArray.new(-5)}.to raise_error(ArgumentError)
		end

		it "raises argument error for number 0" do
			expect{FixedArray.new(0)}.to raise_error(ArgumentError)
		end
		it "creates an array of argument length" do
			length = @array.length
			expect(length).to eq 10
		end
	end

	describe "#length" do

		it "returns the length of the fixed array" do
			expect(@array_two.length).to eq 20
		end
	end
  
  describe "#get" do
  	it "raises an OutOFBoundsException when the argument is outside of array bounds" do
  		expect{@array.get(11)}.to raise_error(ArgumentError)
  	end

  	it "returns the value of a given index within array bounds" do
  		expect(@array.get(9)).to eq 0
  	end
  end

  describe "#set" do
  	it "raises an OutOFBoundsException when the argument is outside of array bounds" do
  		expect{@array.get(11)}.to raise_error(ArgumentError)
  	end

  	it "sets changes the value of a given index within array bounds" do
  		@array.set(0, 10)
  		expect(@array.get(0)).to eq 10
  	end

  	it "returns the value of the new element" do
  		expect(@array.set(0, 10)).to eq 10
  	end
  end
end
