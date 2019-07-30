class User < ApplicationRecord
  has_many :projects
  validates :name, :email, presence: true
  validates :email, uniqueness: true

  has_secure_password


end
