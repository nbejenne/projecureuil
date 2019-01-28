class Reaction < ApplicationRecord
  belongs_to :picture
  belongs_to :membership
  validates :membership_id, uniqueness: true
  validates :picture_id, uniqueness: true
end
