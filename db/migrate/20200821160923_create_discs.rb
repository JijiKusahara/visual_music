class CreateDiscs < ActiveRecord::Migration[6.0]
  def change
    create_table :discs do |t|
      t.string :disc,               null: false

      t.timestamps
    end
  end
end
