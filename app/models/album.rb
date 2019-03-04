class Album < ApplicationRecord
  has_many :pictures
  has_many :invitations, inverse_of: :album
  has_many :memberships
  has_many :users, through: :memberships
  accepts_nested_attributes_for :invitations, reject_if: :all_blank, allow_destroy: true

end
