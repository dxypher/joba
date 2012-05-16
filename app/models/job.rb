class Job < ActiveRecord::Base
  attr_accessible :application_date, :company, :email, :job_title, :phone, :response, :website, :blog, :job_board,
  				  :notes, :job_posting, :job_summary, :company_id

  belongs_to :company
end
