class Picture < ApplicationRecord
  belongs_to :album
  belongs_to :membership
  has_many :reactions
end
