class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

  validates_uniqueness_of :name
  validates_length_of :bio, minimum: 30, maximum: 10000
end
