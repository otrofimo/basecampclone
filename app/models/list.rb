class List < ActiveRecord::Base
  belongs_to :project
  has_many :tasks
  attr_accessible :title

  validates :title, :presence => true
end
