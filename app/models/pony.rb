class Pony < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	belongs_to :stable
end
