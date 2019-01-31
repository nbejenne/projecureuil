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
    @invitation = Invitation.new(invitation_params)
    @invitation.album = Album.find(params[:album_id])
    @invitation.user = current_user
    @invitation.accepted_at = "Pending"
    @invitation.save!

    redirect_to album_path(Album.find(params[:album_id]))
  end

private

  def invitation_params
    params.require(:invitation).permit(:email)
  end
end

