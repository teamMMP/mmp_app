class Event < ActiveRecord::Base
	belongs_to :user
	has_many :favorites, dependent: :destroy



def favorited_by? user
    favorites.where(user_id: user.try(:id)).exists?
end
end
