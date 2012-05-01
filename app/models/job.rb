class Job < ActiveRecord::Base
  attr_accessible :application_date, :company, :email, :job_title, :phone, :response, :website, :blog, :job_board, :notes
end
