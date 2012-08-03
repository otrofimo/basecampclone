require 'spec_helper'

describe "Tasks" do
	subject    { page             }
	before     { visit root_path  }
	let(:user) { Fabricate(:user) }

	before :each do
		@project = Fabricate(:project, :id => 10)
		@list = Fabricate(:list_with_tasks, :project_id => 10)
		click_link("Sign in")
		page.fill_in('user_email', :with => user.email)
		page.fill_in('user_password', :with => user.password)
		click_button("Sign in")
		visit project_list_path(@list.project, @list)		
	end

  describe "tasks#create" do
    it "makes a new task" do
    	@new_task = Fabricate(:task)
    	page.fill_in("task_body", :with => @new_task.body )
    	click_button "Whatever"
    	page.should have_content @new_task.body
    end

    it "should not accept a blank body" do
    	click_button "Whatever"
    	page.should have_content "Body can't be blank"
    end
  end
end
