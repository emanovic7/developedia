class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true

  has_many :projects
  has_many :reviews
  has_many :developers, through: :reviews




end
