class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def queue_items
      QueueItem.all.select {|item| item.movie == self}
  end

  def viewers
    self.queue_items.map {|item| item.viewer}
  end

  def average_rating
    sum = self.queue_items.inject(0) {|sum, item| sum+item.rating.to_i}
    average = sum.to_f/self.queue_items.length
  end

  def self.highest_rated
    ratings = {}

    self.all.each do |movie|
      ratings["#{movie.title}"] = movie.average_rating
    end
    array = ratings.sort_by {|movie,rating| rating}
    array[-1]
  end

  def self.all
    @@all
  end

end
