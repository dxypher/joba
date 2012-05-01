class AlterJobs < ActiveRecord::Migration
  def up
  	add_column("jobs", "job_title", :string)
  	add_column("jobs", "company", :string)
  	add_column("jobs", "response", :string)
  	add_column("jobs", "application_date", :date)
  end

  def down
  	remove_column("jobs", "application_date")
  	remove_column("jobs", "response")
  	remove_column("jobs", "company")
  	remove_column("jobs", "job_title")
  end
end
