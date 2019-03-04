class InvitationsController < ApplicationController

  def index
    @album = Album.find(params[:album_id])
    @invitations = Invitation.all
  end

  def new
    @invitations = Invitation.all
    @album = Album.find(params[:album_id])
    @invitation = Invitation.new
  end

  def create
    @album = Album.find(params[:album_id])
    @invitation = @album.invitations.build(invitation_params)

    @invitation.sender_id = current_user.id

    if @invitation.save!
      invitation_recipient?
      respond_to do |format|
        format.html { redirect_to new_album_invitation_path(@album) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'invitations/new' }
        format.js
      end
    end
  end

private

  def invitation_recipient?
    if @invitation.recipient != nil
      InvitationMailer.existing_user_invitation(@invitation).deliver
      @invitation.recipient.albums.push(@invitation.album)
    else
      InvitationMailer.invitation(@invitation, new_user_registration_url(:invitation_token => @invitation.token)).deliver
    end
  end

  def invitation_params
    params.require(:invitation).permit(:email, :album_id, :invitation_token)
  end
end

