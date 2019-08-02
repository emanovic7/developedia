class Project < ApplicationRecord
  validates :name, presence: true

  has_many :jobs
  has_many :developers, through: :jobs
  belongs_to :user

  def developers_skills_total
    sum = 0
    self.developers.each do |developer|
      sum += developer.total_skills
    end
    return sum
  end

  def project_length
    if self.developers_skills_total.between?(0,10)
      return "This job will take about 2 months to complete"
    elsif self.developers_skills_total.between?(10,30)
      return "This job will take about 1 month to complete"
    elsif self.developers_skills_total.between?(30,50)
      return "This job will take about 3 weeks to complete"
    elsif self.developers_skills_total > 50
      return "This job will take 2 weeks or less to complete"
    end
  end

  def project_cost
    sum = 0
    self.developers.each do |developer|
      sum += developer.developer_cost
    end
    return sum
  end

end
