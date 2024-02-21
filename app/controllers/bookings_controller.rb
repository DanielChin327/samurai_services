class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(bookmark_params)
    @booking.samurai = @samurai
    if @booking.save
      redirect_to samurais_path
    else
      render:new
    end
  end

  private

  def bookmark_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
