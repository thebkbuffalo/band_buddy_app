class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text, null: false
      t.string :answer_1, null: false
      t.string :answer_2, null: false
      t.timestamps
    end
  end
end
