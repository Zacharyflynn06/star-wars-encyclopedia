class Film < ApplicationRecord

    has_and_belongs_to_many :characters
    has_one :director

end
