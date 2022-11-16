class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = current_user.projects
    @tasks = Task.all
  end

  def show;
    @comment = @project.comments.new
    @label = @project.labels.new
  end

  def new
    @project = current_user.projects.new
    
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      current_user.projects <<  @project
      redirect_to root_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @project.update(project_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to root_path
  end

  private
  def set_project
    @project = current_user.projects.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, documents: [])
  end
end

