class Project < ApplicationRecord
  validates :name, presence: true

  has_many :jobs
  has_many :developers, through: :jobs
  belongs_to :user
end
