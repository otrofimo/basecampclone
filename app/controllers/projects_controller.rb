class ProjectsController < ApplicationController
	before_filter :authenticate_user!

  def index
  	@projects = Project.all
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    @lists = @project.lists
    @list = List.new
  end

  def create
    @project = Project.new(params[:project])
    @project.save
    redirect_to projects_path
  end

  def edit
  end
end
