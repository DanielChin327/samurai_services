class SamuraisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
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

  private

  def samurai_params
    params.require(:samurai).permit(:name, :skill, :descrption)
  end

  def show
  end
end
