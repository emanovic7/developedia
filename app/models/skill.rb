class Skill < ApplicationRecord
  has_many :skillsets
  has_many :skills, through: :skillsets
end
