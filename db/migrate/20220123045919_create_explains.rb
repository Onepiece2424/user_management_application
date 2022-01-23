class CreateExplains < ActiveRecord::Migration[6.1]
  def change
    create_table :explains do |t|
      t.string :title
      t.text :precedure1
      t.string :image1
      t.text :precedure2
      t.string :image2
      t.text :precedure3
      t.string :image3

      t.timestamps
    end
  end
end
