class CreatePlaylistsSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists_songs do |t|
      t.belongs_to :song
      t.belongs_to :playlist
    end
  end
end
