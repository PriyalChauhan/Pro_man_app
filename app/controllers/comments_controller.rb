class CommentsController < ApplicationController
  def create
    @parent = parent
    @comment = @parent.comments.new(comment_params)
    respond_to do |format|
      if @comment.save
    format.js { render js: 'window.top.location.reload(true);' }
      else
      end
    end
  end

  def update
  end

  def destroy 
  end

  private
  def parent
    return Project.find(params[:project_id]) if params[:project_id]
    Task.find(params[:task_id]) if params[:task_id]
  end

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id)
  end
end
