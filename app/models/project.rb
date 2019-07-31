class Project < ApplicationRecord
  validates :name, presence: true

  has_many :teams
  has_many :developers, through: :teams
  belongs_to :user
end
