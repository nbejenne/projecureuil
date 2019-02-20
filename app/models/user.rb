class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :memberships, dependent: :destroy
  has_many :albums, through: :memberships
  has_many :reactions, through: :memberships

  has_many :invitations, :class_name => "Invitation", :foreign_key => 'recipient_id'
  has_many :sent_invitations, :class_name => "Invitation", :foreign_key => 'sender_id'
end
