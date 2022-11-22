class ProjectsController < ApplicationController
  before_action :set_project, only: [:index, :show, :edit, :update, :destroy]

  def index
    # @projects = current_user.projects
    #@projects = Project.all
    @projects = current_user.teams
    @tasks = Task.all
  end

  def show;
    @project = current_user.projects.find(params[:id])
    @comment = @project.comments.new
    # @label = @project.labels.new
  end

  def new
    @project = current_user.projects.new
    #@project = Project.new
    
  end

  def create
    @project = Project.new(project_params)
    
    if @project.save
      @team = current_user.teams.create(project_id: @project.id)
      # current_user.projects <<  @project
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @project = current_user.projects.find(params[:id])
  end

  def update
    @project = current_user.projects.find(params[:id])
    if @project.update(project_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    #@project = current_user.teams.find(params[:id]).project
    @project = current_user.projects.find(params[:id])
    @project.tasks.clear  
    @project.destroy
    redirect_to root_path
  end

  private
  def set_project
    #@project = current_user.teams.find(params[:id])
    # if current_user.has_role? :employee
      @project = Project.find_by(params[:id])
    # else
       #@project = current_user.projects.find(params[:id])
    # end
  end

  def project_params
    params.require(:project).permit(:name, :description, :priority, documents: [] )
  end
end

