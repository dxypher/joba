class AlterJobsSummary < ActiveRecord::Migration
  def up
  	add_column('jobs', 'job_summary', :text)
  	add_column('jobs', 'job_posting', :string)
  end

  def down
  	remove_column('jobs', 'job_posting')
  	remove_column('jobs', 'job_summary')
  end
end
