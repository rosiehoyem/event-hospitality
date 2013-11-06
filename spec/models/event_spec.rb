require 'spec_helper'

describe Event do

	it "has a valid factory" do
		expect(FactoryGirl.build(:event)).to be_valid
	end
  
  it "is valid with a name, date_start, date_end, and location" do
  	event = FactoryGirl.build(:event)
  end

  it "is invalid without a name" do
  	event = FactoryGirl.build(:event, name: nil)
  end
  
  it "is invalid without a date_start" do
  	event = FactoryGirl.build(:event, date_start: nil)
  end
  
  it "is invalid without a date_end" do
  	event = FactoryGirl.build(:event, date_end: nil)
  end
  
  it "is invalid without a location" do
  	event = FactoryGirl.build(:event, location: nil)
  end

 end
