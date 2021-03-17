# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

films = Api.get_films

characters = Api.get_characters

films["results"].each do |film|

    f = Film.new

    f.title = film["title"]
    f.episode_id = film["episode_id"]
    f.crawl = film["opening_crawl"]
    f.release_date = film["release_date"]
    f.save
end

characters["results"].each do |character|

    c = Character.new

    c.name = character["name"]
    c.height = character["height"]
    c.gender = character["gender"]
    c.save

    character["films"].each do |film|
        cf = CharacterFilm.new
        cf.film_id = film.split("/").last
        cf.character_id = c.id
        cf.save
    end

end


