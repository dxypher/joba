class JobsController < ApplicationController

	def new
		@job = Job.new
	end

	def create
		@job = Job.new(params[:job])
		@job.save
		redirect_to '/jobs'
	end

	def index
		@jobs = Job.all
	end

	def show
		@job = Job.find_by_id(params[:id])
	end

	def edit
		@job = Job.find_by_id(params[:id])
	end

	def update
		@job = Job.find_by_id(params[:id])
		@job.update_attributes(params[:job])
		redirect_to '/job/:id'
	end

	def delete
		@job = Job.find_by_id(params[:id])
	end

	def destroy
		@job = Job.find_by_id(params[:id]).destroy

		redirect_to ('/jobs')
		
	end
end