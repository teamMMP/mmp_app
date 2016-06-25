class CreateUserProfs < ActiveRecord::Migration
  def change
    create_table :user_profs do |t|
      t.string :nickname
      t.integer :gender
      t.string :icon
      t.integer :age

      t.timestamps null: false
    end
  end
end
