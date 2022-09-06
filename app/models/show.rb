class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    highest_show = Show.where("rating = ?", Show.highest_rating)
    highest_show[0]
  end

  def self.lowest_rating
    Show.minimum (:rating)
  end

  def self.least_popular_show
    lowest_show = Show.where("rating = ?", Show.lowest_rating)
    lowest_show[0]
  end

  def self.ratings_sum
    Show.sum (:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end

end