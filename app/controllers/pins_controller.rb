class PinsController < ApplicationController
  def create
    @parent = parent
    @pin = Pin.new(pin_params)
    if @pin.save 
      redirect_to root_path
    else
    end
  end
  private
  def parent
    return Project.find(params[:project_id]) if params[:project_id]
    Task.find(params[:task_id]) if params[:task_id]
    Label.find(params[:label_id]) if params[:label_id]
  end

  def pin_params
    params.require(:pin).permit(:project_id, :task_id, :label_id)
  end
end 