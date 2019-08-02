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


end
