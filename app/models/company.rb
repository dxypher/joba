class Company < ActiveRecord::Base
  attr_accessible :blog, :business_model, :email, :founded, :industry, :job_board, :latest_news, :main_competitors, :name, :opportunities, :phone, :threats, :website
end
