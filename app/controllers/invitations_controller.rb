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
      InvitationMailer.invitation(@invitation, new_user_registration_url(:invitation_token => @invitation.token)).deliver
    else
      render 'invitations/new'
    end
  end

private

  def invitation_params
    params.require(:invitation).permit(:email)
  end
end

