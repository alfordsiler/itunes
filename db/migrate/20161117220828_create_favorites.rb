class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string :track
      t.string :artist
      t.string :preview
      t.decimal :price

      t.timestamps
    end
  end
end
