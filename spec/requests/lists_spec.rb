require 'spec_helper'

describe "Lists" do
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

	it "shows existing lists" do
    page.should have_content @list.title
  end

  describe "lists#create" do
  	it "makes a new list"
  		
  	end
  end

  describe "lists#show" do
    it "shows all the tasks" do
     @list.tasks.each { |task| page.should have_content task.body }
    end
  end

end
