class ApplicationMailer < ActionMailer::Base
  default from: "abc@gmail.com"  #find a way to use --> #current_user.email
  layout "mailer"
end
