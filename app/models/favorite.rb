class Favorite < ActiveRecord::Base
	belongs_to :user
	belongs_to :event

	validates :user, presence: true
	validates :event_id, uniqueness: { scope: :event_id }
	validates :event, presence: true
end
