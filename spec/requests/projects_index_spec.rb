require 'spec_helper'

# describe "Projects#index" do
# 	before :each do
# 		visit root_path
# 		click_link("Sign up")
# 		page.fill_in('user_email', :with => "rurabe@gmail.com")
# 		page.fill_in('user_password', :with => "example")
# 		page.fill_in('user_password_confirmation', :with => "example")
# 		click_button("Sign up")
# 	end

# 	it "displays all the projects" do
# 		visit root_path
# 		@projects = []
# 		3.times { @projects << Fabricate(:project) }
# 		@projects.each do |project|
# 			page.should have_content(project.title)
# 		end
# 	end
# end