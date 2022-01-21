class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :requesting
      t.string :who
      t.string :whom
      t.date :deadline
      t.integer :user_id

      t.timestamps
    end
  end
end
