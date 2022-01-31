class AddImgToExplains < ActiveRecord::Migration[6.1]
  def change
    add_column :explains, :img, :string
  end
end
