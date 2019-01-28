class Picture < ApplicationRecord
  belongs_to :album
  belongs_to :membership
end
