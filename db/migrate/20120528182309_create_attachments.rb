class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.text :description
      t.string :name
      t.string :file
      t.references :attachable, :polymorphic => true

      t.timestamps
    end
  end
end
