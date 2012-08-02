class Project < ActiveRecord::Base
  belongs_to :user
  has_many :lists
  attr_accessible :clandestine, :title

end
