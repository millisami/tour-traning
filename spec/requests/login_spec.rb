require 'spec_helper'

describe "Login" do

  it "authenticated user should be able to login" do

    user = Factory(:user, :email => "millisami@gmail.com", :password => "secret")

    visit "/users/sign_in"
    fill_in "Email", :with => "millisami@gmail.com"
    fill_in "Password", :with => "secsadfsafret"
    click_button "Sign in"

    page.should have_content("Signed in successfully.")

  end
end