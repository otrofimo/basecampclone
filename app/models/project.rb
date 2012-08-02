class Project < ActiveRecord::Base
  belongs_to :user
  attr_accessible :clandestine, :title

  

end
