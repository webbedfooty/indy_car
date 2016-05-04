class GreetingsController < ApplicationController
  def new
    @name = params[:name]
  end

  def show
    @name = params[:name]
  end
end
