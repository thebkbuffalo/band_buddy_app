class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question
      t.string :beatles, null: false
      t.string :stones, null: false
      t.string :pfunk, null: false
      t.string :james_brown, null: false
      t.string :pac, null: false
      t.string :biggie, null: false
      t.string :ramones, null: false
      t.string :sam_cooke, null: false
      t.string :otis_redding, null: false
      t.string :the_white_stripes, null: false
      t.string :the_black_keys, null: false
      t.string :the_smiths, null: false
      t.string :the_cure, null: false
      t.string :led_zeppelin, null: false
      t.string :the_who, null: false
      t.string :bruce_springsteen, null: false
      t.string :billy_joel, null: false
      t.string :john_coltrane, null: false
      t.string :miles_davis, null: false 
      t.timestamps
    end
  end
end
