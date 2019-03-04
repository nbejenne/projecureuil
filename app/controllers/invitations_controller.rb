class InvitationsController < ApplicationController

  def index
    @album = Album.find(params[:album_id])
    @invitations = Invitation.all
  end

  def new
    @album = Album.find(params[:album_id])
    @invitation = Invitation.new
  end

  def create
    @album = Album.find(params[:album_id])
    @invitation = Invitation.new(invitation_params)
    @invitation.album = @album
    @invitation.sender_id = current_user.id

    if @invitation.save!
      if @invitation.recipient != nil

        InvitationMailer.existing_user_invitation(@invitation).deliver
        @invitation.recipient.albums.push(@invitation.album)
        redirect_to album_invitations_path(@album)
      else
        InvitationMailer.invitation(@invitation, new_user_registration_url(:invitation_token => @invitation.token)).deliver
        redirect_to album_invitations_path(@album)
      end
    else
      render 'invitations/new'
    end
  end

private

  def invitation_params
    params.require(:invitation).permit(:email, :album_id, :invitation_token)
  end
end

