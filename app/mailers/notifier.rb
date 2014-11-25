class Notifier < ActionMailer::Base
  def send_sign_up_email(user)
    @user = user
    mail( to: @user.email,
         subject: 'Thank you for signing up for Kubmo updates')
  end
end
