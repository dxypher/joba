class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :phone
      t.string :email
      t.string :website
      t.string :blog
      t.string :job_board
      t.text :notes

      t.timestamps
    end
  end
end
