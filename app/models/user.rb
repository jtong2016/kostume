class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :favorites , :class_name => "Favorite", :foreign_key => "user_id"
has_many :listings
# , :class_name => "Listing", :foreign_key => "user_id"
has_many :comments , :class_name => "Comment", :foreign_key => "user_id"

end
