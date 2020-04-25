class Rabbit < ApplicationRecord

  validates :name, presence: true
  validates :color, presence: true
  validates :size, presence: true

  attr_accessor :title

  def my_title
    @title = 'rabbits'
  end

end
