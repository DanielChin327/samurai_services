class SamuraisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]
  def index
    @samurais = Samurai.all
  end

  def new
    @samurai = Samurai.new
  end

  def create
    @samurai = Samurai.new(samurai_params)
    @samurai.save
    redirect_to samurai_path(@samurai)
  end
  def show
    @samurai = Samurai.find(params[:id])
    @booking = Booking.new
  end

  private

  def samurai_params
    params.require(:samurai).permit(:name, :skill, :descrption)
  end

end
