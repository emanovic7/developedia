class Developer < ApplicationRecord


  has_many :jobs
  has_many :projects, through: :jobs
  has_many :skillsets
  has_many :skills, through: :skillsets

    def skills=(language)
      self.skills << language
    end

    def skills
      self.skills.map do |skill|
        skill.name
      end
    end


end
