require 'json'
require 'open-uri'

puts 'Cleaning database...'
Movie.destroy_all
# URL du endpoint
url = 'https://tmdb.lewagon.com/movie/top_rated'
# Lecture des données JSON depuis l'URL
response = URI.open(url).read
# Analyse des données JSON
data = JSON.parse(response)
# Récupération des résultats
movies = data['results']
# Itération à travers les résultats et création des instances de films
movies.each do |movie_data|
  Movie.create(
    title: movie_data['title'],
    overview: movie_data['overview'],
    poster_url: "https://image.tmdb.org/t/p/original#{movie_data['poster_path']}",
    rating: movie_data['vote_average']
  )
end
puts '#{movies.size} films créés avec succès.'
puts Movie.all
