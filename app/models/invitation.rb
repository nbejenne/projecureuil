class Invitation < ApplicationRecord
  belongs_to :album
  belongs_to :user
  belongs_to :sender, :class_name => 'User'
  belongs_to :recipient, :class_name => 'User'
end
