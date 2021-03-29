class Board < ApplicationRecord
  require 'carrierwave/orm/activerecord'

  validates_presence_of :user_id

  belongs_to :user
  has_many :comments

  mount_uploader :avatar, AvatarUploader
end
