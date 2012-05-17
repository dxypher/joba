class CompaniesController < ApplicationController

	def new
		@company = Company.new
	end

	def create
		@company = Company.create(params[:company])
		redirect_to '/companies'
	end

	def new_job
		@company = Company.new
	end

	def create_job
		@company = Company.create(params[:company])
		@company.jobs.create(params[:job])
		redirect_to '/jobs'
	end

	def index
		@companies = Company.all
	end

	def show
		@company = Company.find_by_id(params[:id])
	end

	def edit
		@company = Company.find_by_id(params[:id])
	end

	def update
		@company = Company.find_by_id(params[:id])
		@company.update_attributes(params[:company])
		redirect_to '/companies/#{@company.id}'
	end

	def delete
		@company = Company.find_by_id(params[:id])
	end

	def destroy
		@company = Company.find_by_id(params[:id]).destroy

		redirect_to ('/companies')
		
	end
end