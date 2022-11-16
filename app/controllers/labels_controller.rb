class LabelsController < ApplicationController
  def new
    @parent = Project.find_by(params[:project_id])
    @label = @parent.labels.new
  end
  
  def create
    # @label = Label.new(label_params)
    # if @label.save
    #   @parent.labels << @label
    # else
    # end
    # @parent = parent
    @parent = Project.find_by(params[:project_id])
    @label = @parent.labels.new(label_params)
    #respond_to do |format|
      if @label.save
         #format.js { render js: 'window.top.location.reload(true);' }
      else
      
      end
     #end
  end

  private
  def parent
    return Project.find(params[:project_id]) if params[:project_id]
    Task.find(params[:task_id]) if params[:task_id]
  end

  def label_params
    params.require(:label).permit(:label).merge(user_id: current_user.id)
  end
end
