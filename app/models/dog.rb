class Dog < ApplicationRecord

  mount_uploader :image, ImageUploader
  
  validates :name, presence: true
  validates :color, presence: true
  validates :size, presence: true

  attr_accessor :title

  def my_title
    @title = 'dogs'
  end
end
