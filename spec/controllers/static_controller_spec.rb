require 'spec_helper'
require 'capybara/rspec'

describe StaticController do

	describe "guests should be routed to projects#index" do
		visit root_page
		page.should have_content "Sign in"
	end

end
ts