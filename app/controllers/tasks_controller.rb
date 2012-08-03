class TasksController < ApplicationController

	def create
		@list = List.find(params[:list_id])
		@task = @list.tasks.build(params[:task])
		if @task.save
			@project = @list.project
			redirect_to project_list_path(@project,@list)
		else
			flash[:error] = @task.errors.full_messages
			@project = @list.project
			redirect_to project_list_path(@project,@list)
		end
	end
end
