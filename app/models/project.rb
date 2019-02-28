class Project < ApplicationRecord
  belongs_to :creator, :class_name => "User"
  has_many :backings
  has_many :backers, :through => :backings
end
