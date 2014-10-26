class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :bealtes_or_stones, null: false
      t.string :pfunk_or_james_brown, null: false
      t.string :pac_or_biggie, null: false
      t.string :ramons_or_sex_pistols, null: false
      t.string :sam_cooke_or_otis_redding, null: false
      t.string :the_white_stripes_or_the_black_keys, null: false
      t.string :the_smiths_or_the_cure, null: false
      t.string :led_zeppelin_or_the_who, null: false
      t.string :bruce_springsteen_or_billy_joel, null: false
      t.string :john_coltrane_or_miles_davis, null: false
      t.timestamps
    end
  end
end
