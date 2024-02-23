class SamuraisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]
  def index
    @samurais = Samurai.all
    
    if params[:query].present?
      @samurais = @samurais.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end

  def new
    @samurai = Samurai.new
  end

  def create
    @samurai = Samurai.new(samurai_params)
    @samurai.user = current_user
    if @samurai.save
    redirect_to samurai_path(@samurai)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def show
    @samurai = Samurai.find(params[:id])
    @booking = Booking.new
  end

  private

  def samurai_params
    params.require(:samurai).permit(:photo, :name, :skill, :description, :price_per_day, :group_size)
  end

end
