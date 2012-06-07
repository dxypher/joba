class User < ActiveRecord::Base
  attr_accessible :password, :password_confirmation, :email
  
  has_many :jobs
  has_many :companies

  has_secure_password
end
