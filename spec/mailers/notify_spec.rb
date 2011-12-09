require "spec_helper"

describe Notify do

  describe "should notify the destination creator when a new review is added" do


    before do
      @user = Factory(:user, :email => "millisami@gmail.com")
      @destination = Factory.build(:destination, :title => "My destination")
      @destination.user = Factory(:user, :email => "destination@gmail.com")
      @destination.save!
    end

    it "should send an email to destination@gmail.com", :focus do

      review = Factory.build(:review, :content => "Nice one", :user => @user, :destination => @destination)

      review.save!

      last_email.to.should include("destination@gmail.com")
      last_email.subject.should eql("New review added")
      last_email.body.encoded.should match("A new review has been added in your destination")

      last_email.body.encoded.should match("Nice one")
    end

  end
end
