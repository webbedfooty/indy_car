class DriversController < ApplicationController

  def new
    @driver = Driver.new
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def index
    @drivers = Driver.all
  end

  def edit
    @driver = Driver.find(params[id])
  end
end
