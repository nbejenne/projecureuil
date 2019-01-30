class Album < ApplicationRecord
  has_many :pictures
  has_many :invitations
  has_many :memberships
  has_many :users, through: :memberships


end
