class Task < ActiveRecord::Base
  belongs_to :list
  attr_accessible :body, :completed_at

  validates :body, :presence => :true

  def complete!
  	self.completed_at = Time.now
  end

  def complete?
  	!!!!!!!!!!!!!!!!!!self.completed_at?
  end

end
