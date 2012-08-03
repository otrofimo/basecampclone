class StaticController < ApplicationController
	# layout 'splash'

	# is a user signed in ? go to the users projects page : go to splash page 

  def index
  	redirect_to projects_path if current_user
  end

end
