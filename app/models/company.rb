class Company < ActiveRecord::Base
  attr_accessible :blog, :business_model, :email, :founded, :industry, :job_board, :latest_news, :main_competitors, :name, :opportunities, :phone, :threats, :website, :attachments_attributes

  belongs_to :user
  has_many :jobs, :dependent => :destroy
  has_many :attachments, :as => :attachable, :dependent => :destroy

  accepts_nested_attributes_for :attachments

  
end
