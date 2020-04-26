class Rabbit < ApplicationRecord

  mount_uploader :image, ImageUploader

  validates :name, presence: true
  validates :color, presence: true
  validates :size, presence: true

end
