class SecretsController < ApplicationController

	before_action :authenticate_user

	def index
	end

	def show

		# if params[:name] == nil || params[:name].empty?
	 #    	redirect_to new_session_path
	 #    else
	    	
	    	# redirect_to show_secret_path
	    # end
	end

end