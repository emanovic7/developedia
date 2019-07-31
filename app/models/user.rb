class User < ApplicationRecord
  has_secure_password
  
  has_many :projects
  validates :name, presence: true




end
