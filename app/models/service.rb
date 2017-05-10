class Service < ApplicationRecord
	belongs_to :service_category
	has_attached_file :service_pic, :styles => { :small => "180x180>" , :thumb => "50x50>" , }

validates_attachment_size :service_pic, :less_than => 5.megabytes
validates_attachment_content_type :service_pic, :content_type => ['image/jpeg', 'image/png' ,'image/jpg']
end
