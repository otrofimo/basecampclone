class ListsController < ApplicationController
  def show
  end

  def edit
  end

  def create
  	@project = Project.find(params[:project_id])
  	@list = @project.lists.build(params[:list])
  	if @list.save
  		redirect_to project_path(@project)
  	else
  		raise "You messed up fool"
  	end
  end
end
