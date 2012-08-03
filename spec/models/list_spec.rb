require 'spec_helper'

describe List do

	describe "title" do
		it "has a title" do
			@list = Fabricate(:list)
			@list.title.should_not be_nil
		end

		it "requires a title" do
			expect { Fabricate(:list,:title => nil) }.to raise_error(ActiveRecord::RecordInvalid)
		end


	end




end
