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
  		raise "You messed up fool"
  	end
  end
end
