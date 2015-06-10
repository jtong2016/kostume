class Listing < ActiveRecord::Base

has_many :comments , :class_name => "Comment", :foreign_key => "listing_id"
has_many :favorites , :class_name => "Favorite", :foreign_key => "listing_id"
belongs_to :category
belongs_to :user
#, :class_name => "User", :foreign_key => "listing_id"

end
