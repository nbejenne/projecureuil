# Preview all emails at http://localhost:3000/rails/mailers/invitation_mailer
class InvitationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/invitation_mailer/inscription
  def invitation
    InvitationMailer.invitation
    invitation_email = User.second.email
    InvitationMailer.invitation(invitation_email)
  end

end
