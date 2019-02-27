class Backing < ApplicationRecord
  belongs_to :backer, :foreign_key => :backer_id, :class_name => "User"
  belongs_to :project
end
