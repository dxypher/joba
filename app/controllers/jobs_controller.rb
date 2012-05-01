class JobsController < ApplicationController
	def list
		@jobs = Job.all
	end

	def show
		@job = Job.find_by_id(params[:id])
	end
end