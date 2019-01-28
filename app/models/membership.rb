class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :album
  has_many :pictures
  has_many :reactions

end
