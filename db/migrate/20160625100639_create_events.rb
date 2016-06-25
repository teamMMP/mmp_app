class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :name
      t.date :date
      t.string :area
      t.text :info_member

      t.timestamps null: false
    end
  end
end
