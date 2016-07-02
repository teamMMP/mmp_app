class CreateUserProfs < ActiveRecord::Migration
  def change
    create_table :user_profs do |t|
      t.string :nickname
      t.integer :gender
      t.string :image
      t.integer :age
      t.text :desc

      
    end
  end
end
