class AddAlbumIdToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :album_id, :integer
  end
end
