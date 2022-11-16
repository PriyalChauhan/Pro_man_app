class TasksController < ApplicationController
  before_action :set_task

  def index
    @project = Project.find(params[:project_id])
    @tasks = @project.tasks
    @task = @project.tasks.find_by(params[:id])
    # @task = @project.tasks.find(params[:id])

    unless @task.nil? 
    @comment = @task.comments.new
    @task.comments << @comment
    end
  end

  def create
    @task = @project.tasks.new(task_params)
    if @task.save
    redirect_to project_tasks_path(@project)
    else
    end
  end

  def show
  end 

  def update
    @task = @project.tasks.update(task_params)
    redirect_to project_path(@project)
  end

  def destroy
    @task = @project.tasks.find(params[:id])
    @task.destroy
  end

  private
  def set_task
    @project = current_user.projects.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:title, :project_id, :status, :reporter_id, :assignee_id, documents: [])
  end
end
