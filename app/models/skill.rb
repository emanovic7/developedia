class Skill < ApplicationRecord
  has_many :skillsets
  has_many :developers, through: :skillsets

end
