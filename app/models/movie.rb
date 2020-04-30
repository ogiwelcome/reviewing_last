class Movie < ApplicationRecord
  validates :Title, presence: true
  
  def self.search(search)
    return Movie.all unless search
    Movie.where(['title LIKE?', "%#{search}%"])
  end
  
end
