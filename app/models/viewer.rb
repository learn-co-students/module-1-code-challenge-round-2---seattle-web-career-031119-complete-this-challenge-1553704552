class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def queue_items
    QueueItem.all.select {|item| item.viewer == self}
  end

  def queue_movies
    self.queue_items.map {|item| item.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

  def rate_movie(movie,rating)
    if self.queue_items.find {|item| item.movie == movie}
      movie_item = self.queue_items.find {|item| item.movie == movie}
      movie_item.rating = rating
    else
      QueueItem.new(movie, self, rating)
    end
  end

  def self.all
    @@all
  end

end
