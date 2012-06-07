class SessionsController < ApplicationController
	def new		
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:login_id] = user.id
			redirect_to dashboards_url, notice: "Welcome Back!"

		else	
			flash[:notice] = 'Unknown email or password'
			render :new
		end
	end

	def destroy
		
	end
end