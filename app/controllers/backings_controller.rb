class BackingsController < ApplicationController

  def index
    @backings = Backing.all
  end

  def show
    set_backing
  end

  def new
    @backing = Backing.new
  end

  def create
    backing = Backing.new(backing_params)
    if backing.save
      redirect_to backings_path
    else
      flash[:notice] = "You done goofed son"
      redirect_to new_backing_path
    end
  end

  private

  def set_backing
    @backing = Backing.find(params[:id])
  end

  def backing_params
    params.require(:backing).permit(:backer_id, :project_id, :amount)
  end

end
