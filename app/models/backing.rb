class Backing < ApplicationRecord
  belongs_to :backer, :foreign_key => :backer_id, :class_name => "User"
  belongs_to :project

  validates_numericality_of :amount, :less_than => 50000
  validates_numericality_of :amount, :greater_than => 0
end
