class InvitationsController < ApplicationController
  def new
    @album = Album.find(params[:album_id])
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)
    @invitation.album = Album.find(params[:album_id])
    @invitation.save
    redirect_to root_path
  end

private

  def invitation_params
    params.require(:invitation).permit(:email)
  end
end

