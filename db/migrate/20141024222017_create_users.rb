class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :is_band
      t.boolean :is_musician
      t.integer :years_playing

      t.timestamps
    end
  end
end
