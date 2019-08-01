class Developer < ApplicationRecord
  has_many :jobs
  has_many :projects, through: :jobs
  has_many :skillsets
  has_many :skills, through: :skillsets
  has_many :reviews
  has_many :users, through: :reviews
end
