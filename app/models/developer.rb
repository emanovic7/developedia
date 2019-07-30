class Developer < ApplicationRecord
  has_many :skillsets
  has_many :skills, through: :skillsets
end
