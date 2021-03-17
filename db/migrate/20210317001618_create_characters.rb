class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|

      t.string :name
      t.integer :height
      t.string :gender

      t.timestamps
    end
  end
end
