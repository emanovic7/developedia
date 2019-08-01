class User < ApplicationRecord
  has_secure_password

  has_many :projects
  has_many :reviews
  has_many :developers, through: :reviews
  validates :name, presence: true




end
