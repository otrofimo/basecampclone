class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks
    @task = Task.new
  end


  def create
  	@project = Project.find(params[:project_id])
  	@list = @project.lists.build(params[:list])
  	if @list.save
  		redirect_to project_path(@project)
  	else
  		flash[:error] = @list.errors.full_messages
      redirect_to project_path(@project)
  	end
  end
end
