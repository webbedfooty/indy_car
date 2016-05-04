class GreetingsController < ApplicationController
  def new
  end

  def show
    @name = params[:name]
    if @name.empty?
      redirect_to_new_gretting_path
    end
  end
end
