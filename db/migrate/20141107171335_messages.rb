class Messages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :message
      t.integer :receiver_id
      t.integer :sender_id
  end
end
