class UserProf < ActiveRecord::Base

	mount_uploader :image, ImageUploader


	has_many :posts

end
