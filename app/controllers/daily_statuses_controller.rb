class DailyStatusesController < ApplicationController
  def index
    @daily_statuses = current_user.daily_statuses
  end

  def new
    #@daily_status = current_user.daily_statuses.new
    @daily_status = current_user.daily_statuses.new(statuses: [Status.new])
    #@statuses = @daily_status.statuses.build
  end

  def create
    @daily_status = current_user.daily_statuses.new(daily_status_params)
    if @daily_status.save
      DailyStatusMailer.with(daily_status: @daily_status).new_daily_status.deliver_now
      redirect_to daily_statuses_path(@daily_status)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private
  def daily_status_params
    params.require(:daily_status).permit(:email,:status_date,:project,:working_hours,:status, statuses_attributes: [:id, :daily_status_id, :status, :_destroy] )
  end
end
