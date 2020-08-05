class CreateSongcolors < ActiveRecord::Migration[6.0]
  def change
    create_table :songcolors do |t|
      t.string :color,               null: false
      t.references :song, foreign_key: true
      # t.string :colortitle,               null: false
      # t.text :comment
      # t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
