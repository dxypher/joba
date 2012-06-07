class AddUseridToCompaniesAndJobs < ActiveRecord::Migration
  def change
  	add_column :jobs, :user_id, :integer  	
  	add_column :companies, :user_id, :integer  	
  end
end
