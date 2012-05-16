class JobsController < ApplicationController

	def new
		@job = Job.new
		
		
	end

	def create
		@job = Job.create(params[:job])
		
		

		redirect_to '/jobs'
		# @order = @customer.orders.create(:order_date => Time.now)
	end

	def index
		@jobs = Job.all
		@company = Company.all
	end

	def show
		@job = Job.find_by_id(params[:id])
		@company = Company.find_by_id(params[:id])
	end

	def edit
		id = params[:id]
		@job = Job.find_by_id(id)
	end

	def update
		@job = Job.find_by_id(params[:id])
		@job.update_attributes(params[:job])
		redirect_to "/jobs/#{@job.id}"
	end

	def delete
		@job = Job.find_by_id(params[:id])
	end

	def destroy
		@job = Job.find_by_id(params[:id]).destroy

		redirect_to ('/jobs')
		
	end
end