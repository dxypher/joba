class JobsController < ApplicationController

	before_filter :require_login
	# before_filter :require_user
	
	def new
		@job = Job.new
		@company = Company.new		
		
	end

	def create
		@job = Job.create_job(params[:company], params[:job])
		@job.user = @user
		@job.save
		id = @job.company.id
		redirect_to :controller => 'companies', :action => 'edit', :id => id 	
		
	end

	def index
		@jobs = @user.jobs.all
		
	end

	def show
		@job = @user.jobs.find_by_id(params[:id])
		
	end

	def edit
		#id = params[:id]
		@job = @user.jobs.find_by_id(params[:id])
		@company = Company.find_by_id(@job.company_id)

	end

	def update
		# @job = Job.find_by_id(params[:id])
		# @job.update_attributes(params[:job])
		# @job.company.update_attributes(params[:company])
		
		@job = @user.jobs.find(params[:id])
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
		@job = @user.jobs.find_by_id(params[:id])
	end

	def destroy
		@job = @user.jobs.find_by_id(params[:id]).destroy

		redirect_to ('/jobs')
		
	end
end