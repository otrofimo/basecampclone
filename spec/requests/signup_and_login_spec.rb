require 'spec_helper'

describe "LoginRoutings" do
	subject    { page             }
	before     { visit root_path  }
	let(:user) { Fabricate(:user) }

  describe "GET /" do
    it "guests should be routed to static#index" do
			visit root_path
			page.should have_link("Sign in")
		end

		it "users should be routed to projects#index" do
			click_link("Sign in")
			page.fill_in('user_email', :with => user.email)
			page.fill_in('user_password', :with => user.password)
			click_button('Sign in')
			visit root_path
			current_path.should == projects_path
		end
  end
end
