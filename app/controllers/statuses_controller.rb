class StatusesController < ApplicationController
  before_action :setup_daily_status

  def new
  end

  def destroy
  end

  private
  def setup_daily_status
    @daily_status = DailyStatus.new(statuses: [Status.new])
  end
end
