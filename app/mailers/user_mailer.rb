class UserMailer < ActionMailer::Base
  default :from => "esauter5@gmail.com"
  def email_match(user)
    @user = user
    mail(to: "#{user.first_name} #{user.last_name} <#{user.email}>", subject: "Confidential: GC Secret Santa")
  end
end
