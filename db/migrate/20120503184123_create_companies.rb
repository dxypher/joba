class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :founded
      t.string :website
      t.string :job_board
      t.string :blog
      t.integer :phone
      t.string :email
      t.string :industry
      t.text :business_model
      t.text :main_competitors
      t.text :threats
      t.text :opportunities
      t.text :latest_news

      t.timestamps
    end
  end
end
