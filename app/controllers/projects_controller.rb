class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    set_project
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

end
