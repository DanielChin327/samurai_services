class SamuraisController < ApplicationController

  def index
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
