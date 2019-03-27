require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jon = Viewer.new("jonL")
chris = Viewer.new("chrisAbc")
doug = Viewer.new("Dougw")
abe = Viewer.new("abe")

matrix = Movie.new("the matrix")
theRing = Movie.new("The Ring")
grandmasboy = Movie.new("Grandma Boy")
matrix2 = Movie.new("the matrix 2")
matrix3 = Movie.new("the matrix 3")


jon.add_movie_to_queue(matrix)
jon.add_movie_to_queue(matrix2)
jon.add_movie_to_queue(matrix3)
jon.add_movie_to_queue(grandmasboy)

chris.add_movie_to_queue(theRing)
chris.add_movie_to_queue(matrix2)
chris.add_movie_to_queue(matrix3)
chris.add_movie_to_queue(grandmasboy)

chris.rate_movie(matrix,5)
jon.rate_movie(matrix,4)
abe.rate_movie(matrix,1)
abe.rate_movie(matrix2,2)
abe.rate_movie(matrix3,2)
abe.rate_movie(theRing,1)
abe.rate_movie(grandmasboy,2)











binding.pry
0 #leave this here to ensure binding.pry isn't the last line
