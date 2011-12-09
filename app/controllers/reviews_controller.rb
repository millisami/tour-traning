class ReviewsController < ApplicationController

  before_filter :authenticate_user!
  before_filter :find_destination

  def create


    @review = @destination.reviews.create(params[:review].merge!({user_id: current_user.id}))

    respond_to do |format|
      format.html {redirect_to destination_path(@destination)}
      format.js
    end
  end


  private

  def find_destination
    @destination = Destination.find(params[:destination_id])
  end

end