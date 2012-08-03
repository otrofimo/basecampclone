require 'spec_helper'

describe "Projects" do
	subject    { page             }
	before     { visit root_path  }
	let(:user) { Fabricate(:user) }

	describe "projects#index" do

		before :each do
			@project = Fabricate(:project)
			click_link("Sign in")
			page.fill_in('user_email', :with => user.email)
			page.fill_in('user_password', :with => user.password)
			click_button("Sign in")			
		end

		it "displays all the projects" do
			page.should have_content(@project.title)
		end

		it "can create a new project" do
			page.fill_in("project_title", :with => @project.title)
			click_button("Fine")
			visit projects_path
			page.should have_content(@project.title)
		end

		it "validates title on creation" do
			click_button("Fine")
			page.should have_content("Title can't be blank")
		end

		it "can create a new private project" do
			page.fill_in("project_title", :with => @project.title)
			page.check "project_clandestine"
			click_button("Fine")
			visit projects_path
			page.should have_content(@project.title)
			page.should have_content(@project.clandestine)
		end

		it "links to the appropriate list" do
			click_link @project.title
			page.should have_content @project.title
			page.should have_content "This project has the following lists, or whatever:"
		end

	end
end