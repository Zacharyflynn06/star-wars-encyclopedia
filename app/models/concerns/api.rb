require 'open-uri'

module Api
    class << self

        BASE_URL = "https://swapi.dev/api/"
        PLANETS = "planets/"
        PEOPLE = "people/"
        FILMS =  "films/"

        PAGES = ["http://swapi.dev/api/people/?page=1",
            "http://swapi.dev/api/people/?page=2",
            "http://swapi.dev/api/people/?page=3",
            "http://swapi.dev/api/people/?page=4",
            "http://swapi.dev/api/people/?page=5",
            "http://swapi.dev/api/people/?page=6",
            "http://swapi.dev/api/people/?page=7",
            "http://swapi.dev/api/people/?page=8",
            "http://swapi.dev/api/people/?page=9",]


            

        def get_films
            uri = URI.parse(BASE_URL + FILMS)
            response = Net::HTTP.get_response(uri)
            JSON.parse(response.body)

        end


        def get_characters
            uri = URI.parse(BASE_URL + page)
            response = Net::HTTP.get_response(uri)
            JSON.parse(response.body)
        end
    
    end
end