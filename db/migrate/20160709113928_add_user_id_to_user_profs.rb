class AddUserIdToUserProfs < ActiveRecord::Migration
  def change
    add_column :user_profs, :user_id, :integer
  end
end
