class Movie < ApplicationRecord
  validates :Title, presence: true
  validates :Date, presence: true
  validates :Theater, presence: true
  
  def self.search(search)
    return Movie.all unless search
    Movie.where(['title LIKE?', "%#{search}%"])
  end
  
end
