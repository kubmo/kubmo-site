class MentorApplicationReceived < ActionMailer::Base
  default reply_to: 'noreply@kubmo.org',
    from: 'Kubmo Staff <noreply@kubmo.org>'

  def application_received(mentor)
    @mentor = mentor
    mail(to: @mentor.email,
        subject: 'Thank you for applying to be a Kubmo mentor!')
  end
end
