class StatusesController < ApplicationController
  def destroy
    @daily_status = DailyStatus.new(statuses: [Status.new])
  end
end
