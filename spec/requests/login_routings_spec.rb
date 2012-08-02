require 'spec_helper'

describe "LoginRoutings" do

  describe "GET /" do
    it "guests should be routed to static#index" do
			visit root_path
			page.should have_link("Sign in")
		end

		it "users should be routed to projects#index" do
			visit root_path
			click_link("Sign up")
			page.fill_in('user_email', :with => "rurabe@gmail.com")
			page.fill_in('user_password', :with => "example")
			page.fill_in('user_password_confirmation', :with => "example")
			click_button("Sign up")
			click_link("Sign Out")
			click_link("Sign in")
			page.fill_in('user_email', :with => "rurabe@gmail.com")
			page.fill_in('user_password', :with => "example")
			click_button('Sign in')
			visit root_path
			current_path.should == projects_path
		end
  end
end
