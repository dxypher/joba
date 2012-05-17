class Job < ActiveRecord::Base
  attr_accessible :application_date, :company, :email, :job_title, :phone, :response, :website, :blog, :job_board,
  				  :notes, :job_posting, :job_summary, :company_id

  belongs_to :company
  accepts_nested_attributes_for :company

  def self.create_job company, job
  	@company = Company.find_or_create_by_name(company[:name])
	@company.jobs.create(job)
	
  end
end
