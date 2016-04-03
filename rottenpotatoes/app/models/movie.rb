class Movie < ActiveRecord::Base

  attr_accessible :title, :rating, :description, :release_date, :director

  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.similar_movies movie_id
    subject = Movie.find_by_id(movie_id)
    Movie.where(:director => subject.director)
  end
  
  def self.movie_name id
    subject = Movie.find_by_id(id)
    subject.title
  end
end

