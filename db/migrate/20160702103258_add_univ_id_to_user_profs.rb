class AddUnivIdToUserProfs < ActiveRecord::Migration
  def change
    add_column :user_profs, :univ_id, :integer
  end
end
