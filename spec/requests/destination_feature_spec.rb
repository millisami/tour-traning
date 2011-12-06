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

end