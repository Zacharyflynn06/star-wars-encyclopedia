class CreateCharacterFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :character_films do |t|

      t.references :film
      t.references :character

      t.timestamps
    end
  end
end
