class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :episode_id
      t.text  :crawl
      t.string :release_date
      t.string :director

      t.timestamps
    end
  end
end
