class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :user_vehicles
  has_attached_file :photo, :styles => { :small => "200x200>" , :thumb => "50x50>"},
                  :default_url => 'avatar.png'

validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png' ,'image/jpg']
end
