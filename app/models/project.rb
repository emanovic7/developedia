class Project < ApplicationRecord
  validates :name, presence: true

  has_many :jobs
  has_many :developers, through: :jobs
  belongs_to :user

  def developers_skills_total
    sum = 0
    self.project.developers.each do |developer|
      sum += developer.total_skills
    end
    return sum
  end

  # def project_length
  #   if self.developers_skills_total
  # end

end
