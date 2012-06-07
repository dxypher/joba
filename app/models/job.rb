class Job < ActiveRecord::Base
  attr_accessible :application_date, :email, :job_title, :phone, :response, :website, :blog, :job_board,
  				  :notes, :job_posting, :job_summary, :company_id, :attachments_attributes #:document

  belongs_to :company
  belongs_to :user
  has_many :attachments, :as => :attachable, :dependent => :destroy
  accepts_nested_attributes_for :company
  accepts_nested_attributes_for :attachments

  # mount_uploader :document, DocumentUploader

  def self.create_job company, job
  	@company = Company.find_or_create_by_name(company[:name])
	@company.jobs.create(job)	
  end

  def self.update_company company
  	@company = Company.find_or_create_by_name(company[:name])
  	
  end
end
