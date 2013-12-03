class UserMailer < ActionMailer::Base
  default :from => "esauter5@gmail.com"
  def email_match(user)
    @user = user
    mail(to: "eric <esauter5@gmail.com>", subject: "This is just a test")
  end
end
