class Daimyo::BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings_as_daimyo
  end

 
end
