require 'spec_helper'

describe Destination do

  it "should not save with blank description" do
    destination = Factory.build(:destination, :description => "")
    destination.save
    destination.should_not be_valid
  end

  it "should not save with blank title" do
    destination = Factory.build(:destination, :title => "")
    destination.save
    destination.should_not be_valid
  end

end