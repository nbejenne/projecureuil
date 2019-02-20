class InvitationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invitation_mailer.inscription.subject
  #
  def invitation(invitation_email)
    @invitation_email = invitation_email
    @greeting = "Hi"

    mail to: @invitation_email, subject: "invitation"
  end
end
