class ReviewsController < ApplicationController


  before_filter :find_destination

  def create

    @review = @destination.reviews.create(params[:review])

    redirect_to destination_path(@destination)

    # render :text => "Param: #{params}"

  end


  private

  def find_destination
    @destination = Destination.find(params[:destination_id])
  end

end