require 'spec_helper'

describe Task do
  describe "Attributes" do
  	before :each do
  	 	@task = Fabricate(:task)
  	end

  	it "has a body" do
  		@task.body.should_not be nil
  		expect {Fabricate(:task, :body => nil)}.to raise_error(ActiveRecord::RecordInvalid)
  	end

  	it "can be completed" do
  		@task = Fabricate(:task, :completed_at => nil)
  		@task.complete!
  		@task.completed_at.should be_within(0.1).of(Time.now)
  	end

  	it "knows if it is complete" do
  		@task1 = Fabricate(:task, :completed_at => nil )
  		@task2 = Fabricate(:task, :completed_at => Time.now )
  		@task1.complete?.should be false
  		@task2.complete?.should be true
  	end
  end
end
