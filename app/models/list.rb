class List < ActiveRecord::Base
  belongs_to :project
  has_many :tasks
  attr_accessible :title
end
