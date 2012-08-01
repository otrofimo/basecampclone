require 'spec_helper'

describe Project do
  
	context "#title" do
		it "has a title" do
			@project = Project.new
			@project.title.should_not be_nil
		end
	end
end
