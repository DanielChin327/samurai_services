class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    @past_bookings = @bookings.where(status: 'approved').where('end_date < ?', Time.now).order(end_date: :desc, start_date: :desc)
    @upcoming_bookings = @bookings.where(status: ['pending', 'approved']).where('end_date >= ?', Time.now).order(start_date: :asc, end_date: :asc)
    @denied_bookings = @bookings.where(status: 'rejected').order(created_at: :desc)
  end

  def create
    @samurai = Samurai.find(params[:samurai_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    # @booking.status = "pending"
    @booking.samurai = @samurai
    if @booking.save
      redirect_to bookings_path
    else
      render "samurais/show"
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to daimyo_bookings_path
    else
      render "samurais/show"
    end
  end

  private

  def booking_params
    # params.require(:bookings).permit(:)
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
