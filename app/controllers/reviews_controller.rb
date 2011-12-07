class ReviewsController < ApplicationController


  before_filter :find_destination

  def create

      @review = @destination.reviews.create(params[:review])

    @review = @destination.reviews.create({"content" => "sdfsdfsdfsdf"})


    redirect_to destination_path(@destination)
  end


  private

  def find_destination
    @destination = Destination.find(params[:destination_id])
  end

end