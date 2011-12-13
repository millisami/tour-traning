class HomeController < ApplicationController


  def index

    @destinations = Destination.order(:created_at => "desc").limit(3)

  end

end