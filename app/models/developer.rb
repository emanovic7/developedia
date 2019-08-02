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
end
