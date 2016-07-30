class AddEventIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :EventId, :integer
  end
end
