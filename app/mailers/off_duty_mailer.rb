class OffDutyMailer < ApplicationMailer
  def new_leave_mailer
    @off_duty = params[:off_duty]

    mail to: @off_duty.mail_to, subject: "Apllying for leave"
  end
end
