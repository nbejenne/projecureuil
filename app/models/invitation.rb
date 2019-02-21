class Invitation < ApplicationRecord
  before_create :generate_token

  belongs_to :album
  belongs_to :user, optional: true
  belongs_to :sender, :class_name => 'User'
  belongs_to :recipient, :class_name => 'User', optional: true

  def generate_token
   self.token = Digest::SHA1.hexdigest([self.album_id, Time.now, rand].join)
  end

end
