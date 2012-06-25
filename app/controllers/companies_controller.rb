class CompaniesController < ApplicationController
	
	before_filter :require_login
	# before_filter :require_user

	def new
		@company = Company.new
	end

	def create
		@company = Company.create(params[:company])
		redirect_to '/companies'
	end

	def index
		@companies = @user.companies.all
	end

	def show
		
		@company = @user.companies.find_by_id(params[:id])
		company_name = @company.name 
		query = company_name.tr(' ','_') 
		@posts = JSON.parse(open("http://search.twitter.com/search.json?q=#{query}&rpp=10&include_entities=true&result_type=mixed").read)["results"]
	end

	def edit
		@company = @user.companies.find_by_id(params[:id])
	end

	def update
		@company = @user.companies.find_by_id(params[:id])
		@company.update_attributes(params[:company])
		render 'show'
		
	end

	def delete
		@company = @user.companies.find(params[:id])
	end

	def destroy
		@company = @user.companies.find(params[:id]).destroy

		redirect_to ('/companies')
		
	end
end