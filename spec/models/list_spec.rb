require 'spec_helper'

describe List do

	describe "title" do
		it "has a title" do
			@list = Fabricate(:list)
			@list.title.should_not be_nil
		end
	end


end
