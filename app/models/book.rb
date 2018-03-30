class Book < ApplicationRecord
  validates :title, presence: true
  has_many :reviews

  def average_rating
    reviews.average(:score)
  end

  def highest_rating
    reviews.order(:score)
    .last
    .score
  end

  def lowest_rating
    reviews.order(:score)
    .first
    .score
  end
end
