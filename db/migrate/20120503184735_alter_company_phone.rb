class AlterCompanyPhone < ActiveRecord::Migration
  def up
  	change_column('companies', 'phone', :bigint)
  end

  def down
  	change_column('companies', 'phone', :integer)
  end
end

