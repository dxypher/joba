class AlterJobsPhone < ActiveRecord::Migration
  def up
  	change_column("jobs", "phone", :bigint)
  end

  def down
  	change_column("jobs", "phone", :integer)
  end
end
