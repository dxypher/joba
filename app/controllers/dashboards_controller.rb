class DashboardsController < ApplicationController
	def index
		@jobs = Job.all
		@companies = Company.all
	end
end