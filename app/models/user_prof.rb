class UserProf < ActiveRecord::Base

	mount_uploader :image, ImageUploader


	has_many :posts
	belongs_to :univ
	belongs_to :user

end
