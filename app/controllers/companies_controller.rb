class CompaniesController < ApplicationController

	def new
		@company = Company.new
	end

	def create
		@company = Company.create(params[:company])
		redirect_to '/companies'
	end

	def index
		@companies = Company.all
	end

	def show
		@company = Company.find_by_id(params[:id])
		company_name = @company.name 
		query = company_name.tr(' ','_') 
		@posts = JSON.parse(open("http://search.twitter.com/search.json?q=#{query}&rpp=10&include_entities=true&result_type=mixed").read)["results"]
	end

	def edit
		@company = Company.find_by_id(params[:id])
	end

	def update
		@company = Company.find_by_id(params[:id])
		@company.update_attributes(params[:company])
		render 'show'
		
	end

	def delete
		@company = Company.find_by_id(params[:id])
	end

	def destroy
		@company = Company.find_by_id(params[:id]).destroy

		redirect_to ('/companies')
		
	end
end