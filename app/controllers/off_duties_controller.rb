class OffDutiesController < ApplicationController
  def index
    @off_duties = OffDuty.all
  end

  def new
    @off_duty = OffDuty.new
    # @off_duty = current_user.off_duties.new
  end

  def create
    # @off_duty = OffDuty.new(off_duties_params)
    @off_duty = current_user.off_duties.create(off_duties_params)
    # if @off_duty.save
      OffDutyMailer.with(off_duty: @off_duty).new_leave_mailer.deliver_now
      redirect_to off_duties_path
    # else
    #   render :new
    # end
  end

  def show
  end

  private
  def off_duties_params
    params.require(:off_duty).permit(:from_date, :to_date, :days, :mail_to, :reason)
  end

end
