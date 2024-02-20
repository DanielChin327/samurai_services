class SamuraisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @samurais = Samurai.all
  end

  def new
  end

  def create
  end

  def show
  end
end
