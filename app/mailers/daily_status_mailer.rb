class DailyStatusMailer < ApplicationMailer
  def new_daily_status
    @daily_status = params[:daily_status]

    mail to: @daily_status.email, subject: "Status has been updated"
  end
end
