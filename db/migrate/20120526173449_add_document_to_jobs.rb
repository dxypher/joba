class AddDocumentToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :document, :string
  end
end
