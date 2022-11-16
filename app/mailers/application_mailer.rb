class ApplicationMailer < ActionMailer::Base
  default from: "abc@gmail.com"  #current_user.email
  layout "mailer"
end
