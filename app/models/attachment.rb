class Attachment < ActiveRecord::Base
  attr_accessible :description, :file, :name
  belongs_to :attachable, :polymorphic => true

  mount_uploader :file, DocumentUploader
end
