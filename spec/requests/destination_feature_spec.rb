require 'spec_helper'

describe "Destination" do
  it "Listing the destinations" do
    20.times { |t| Factory(:destination, :title => "New destination #{t}") }
    visit destinations_path
    page.should have_content("New destination 1")
  end

  it "Displaying a destination show page" do
    destination = Factory(:destination, :title => "New destination")
    visit destination_path(destination.id)
    page.should have_content("New destination")
  end


  it "Displaying a destination show page" do
    destination = Factory(:destination, :title => "New destination")
    visit destination_path(destination.id)
    click_link("test js")
    page.should have_content "js works"
  end


  it "should allow logged in user to create" do

    user = Factory(:user, :email => "millisami@gmail.com")

    login(user)

    visit new_destination_path

    fill_in "Title", :with => "Newtitle"
    fill_in "Destination", :with => "Dddd"

    click_button("Create Destination")

    page.current_path.should eql(destinations_path)
    page.should have_content("Newtitle")

  end


end