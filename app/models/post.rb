class Post < ApplicationRecord
  belongs_to :blogger
  belongs_to :destination

  validates_length_of :content, minimum: 100

end
