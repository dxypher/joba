class JobsController < ApplicationController

	def new
		@job = Job.new
		@company = Company.new		
		
	end

	def create
		@job = Job.create_job(params[:company], params[:job])	
		redirect_to '/jobs'
		
	end

	def index
		@jobs = Job.all
		
	end

	def show
		@job = Job.find_by_id(params[:id])
		
	end

	def edit
		#id = params[:id]
		@job = Job.find_by_id(params[:id])
		@company = Company.find_by_id(@job.company_id)

	end

	def update
		# @job = Job.find_by_id(params[:id])
		# @job.update_attributes(params[:job])
		# @job.company.update_attributes(params[:company])
		
		@job = Job.find(params[:id])
		@job.update_attributes(params[:job])
		#@job.update_attribute('company_id', nil)
		#@job.company.update_attributes(params[:company])

		company = Job.update_company(params[:company])
		@job.update_attribute('company_id', company['id'])
		#raise params.inspect
		#@company = Job.update_company(params[:company])
		#@job_update = @company.jobs.find_by_id(params[:id])
		#@job_update.update_attributes(params[:job])
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