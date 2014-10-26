class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.boolean :is_band
      t.boolean :is_musician
      t.integer :years_playing, null: false
      t.string :tour_history, null: false
      t.string :location, null: false
      t.string :picture
      t.string :video
      t.string :password_digest
      t.timestamps
    end
  end
end
