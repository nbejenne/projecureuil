class InvitationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invitation_mailer.inscription.subject
  #
  def invitation(invitation_email, url)
    @invitation_email = invitation_email
    @greeting = "Hi"
    @url = url

    mail to: @invitation_email.email, subject: "invitation"
  end
end
