class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question
      t.references :user
      t.string :answers, null: false
      t.timestamps
    end
  end
end
