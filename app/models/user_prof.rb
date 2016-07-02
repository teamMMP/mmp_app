class UserProf < ActiveRecord::Base
	mount_uploader :image, ImageUploader

end
