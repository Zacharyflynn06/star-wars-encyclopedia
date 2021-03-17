require 'open-uri'

module Api
    class << self

        BASE_URL = "https://swapi.dev/api/"
        PLANETS = "planets/"
        PEOPLE = "people/"
        FILMS =  "films/"

        def get_films
            uri = URI.parse(BASE_URL + FILMS)
            response = Net::HTTP.get_response(uri)
            JSON.parse(response.body)

        end
        def get_planets
            uri = URI.parse(BASE_URL + PLANETS)
            response = Net::HTTP.get_response(uri)
            JSON.parse(response.body)
        end

        def get_people
            uri = URI.parse(BASE_URL + PEOPLE)
            response = Net::HTTP.get_response(uri)
            JSON.parse(response.body)
        end
    
    end
end