class AddUserIdToExplains < ActiveRecord::Migration[6.1]
  def change
    add_column :explains, :user_id, :integer
  end
end
