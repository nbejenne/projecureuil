class Invitation < ApplicationRecord
  before_create :generate_token
  before_save :check_user_existence

  belongs_to :album
  belongs_to :user, optional: true
  belongs_to :sender, :class_name => 'User'
  belongs_to :recipient, :class_name => 'User', optional: true

  def generate_token
    self.token = Digest::SHA1.hexdigest([self.album_id, Time.now, rand].join)
  end

  def check_user_existence
    recipient = User.find_by_email(email)
    self.recipient_id = recipient.id if recipient
  end
end
