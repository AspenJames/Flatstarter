class User < ApplicationRecord
  has_many :created_projects, :foreign_key => :creator_id, :class_name => "Project"
  has_many :backings, :foreign_key => :backer_id
  has_many :backed_projects, :through => :backings, :source => :project
end
