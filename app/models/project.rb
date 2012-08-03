class Project < ActiveRecord::Base
  belongs_to :user
  has_many :lists
  has_many :tasks, :through => :lists
  attr_accessible :clandestine, :title

  validates :title, :presence => true

end
