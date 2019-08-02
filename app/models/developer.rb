class Developer < ApplicationRecord
  has_many :jobs
  has_many :projects, through: :jobs
  has_many :skillsets
  has_many :skills, through: :skillsets
  has_many :reviews
  has_many :users, through: :reviews

  def avg_rating
    total_ratings = 0
    self.reviews.map do |review|
      total_ratings += review.rating
    end
    return total_ratings/ self.reviews.length
  end

  def total_skills
    sum_skills = 0
    self.skills.map do |skill|
      sum_skills += skill.level
    end
    return sum_skills
  end

  def developer_cost
    dev_cost = 0
    if self.total_skills.between?(0,10)
      dev_cost = 25
    elsif self.total_skills.between?(10,15)
      dev_cost = 35
    elsif self.total_skills.between?(15,20)
      dev_cost = 40
    elsif self.total_skills.between?(20,30)
      dev_cost = 50
    elsif self.total_skills.between > 30
      dev_cost = 70
    end
    return dev_cost
  end




end
