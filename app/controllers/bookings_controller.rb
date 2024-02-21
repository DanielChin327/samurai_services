class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @samurai = Samurai.find(params[:samurai_id])
    @booking = Booking.new(bookmark_params)
    @booking.user = current_user
    # @booking.status = "pending"
    @booking.samurai = @samurai
    if @booking.save
      redirect_to bookings_path
    else
      render "samurais/show"
    end
  end

  private

  def bookmark_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
