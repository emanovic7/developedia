class Project < ApplicationRecord
  has_many :teams
  has_many :developers, through: :teams
  belongs_to :user

  validates :name, presence: true
end
