class BackingsController < ApplicationController

  def index
    @backings = Backing.all
  end

  def show
    set_backing
  end

  private

  def set_backing
    @backing = Backing.find(params[:id])
  end

end
