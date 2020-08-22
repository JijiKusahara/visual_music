class CreateSongDiscs < ActiveRecord::Migration[6.0]
  def change
    create_table :song_discs do |t|
      t.references :song, foreign_key: true
      t.references :disc, foreign_key: true

      t.timestamps
    end
  end
end
