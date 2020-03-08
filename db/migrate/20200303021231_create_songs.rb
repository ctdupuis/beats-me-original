class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :runtime
      t.integer :artist_id
      t.integer :album_id

      t.timestamps
    end
  end
end
