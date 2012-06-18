class DashboardsController < ApplicationController

	before_filter :require_login
	# before_filter :require_user

	# def require_user
	# 	user = User.find(params[:id])
	# 	if user.id != session[:login_id]
	# 		redirect_to root_url, notice: "Please Login or Sign Up"
	# 	end
	# end
	
	def index
		@user = User.find(session[:login_id])
		# @jobs = Job.all
		# @companies = Company.all
	end
end