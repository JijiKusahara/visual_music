class CreateSongDiscs < ActiveRecord::Migration[6.0]
  def change
    create_table :song_discs do |t|
      t.integer :song_id
      t.integer :disc_id

      t.timestamps
    end
  end
end
