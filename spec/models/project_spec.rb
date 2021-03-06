require 'spec_helper'

describe Project do
  
  before(:each) do
  	@project = Fabricate(:project)
  end

	context "#title" do
		it "has a title" do
			@project.title.should_not be_nil
		end

		it "requires a title" do
			expect { Fabricate(:project,:title => nil) }.to raise_error(ActiveRecord::RecordInvalid)
		end

	end

	context "#clandestinize" do
		it "makes the project private" do
			@project = Fabricate( :project, :clandestine => false )
			@project.clandestine = true
			@project.clandestine.should be true
		end
	end


end
