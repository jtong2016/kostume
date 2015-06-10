class Favorite < ActiveRecord::Base

validates_uniqueness_of :user_id, :scope => [:listing_id]
belongs_to :listing , :class_name => "Listing", :foreign_key => "listing_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"


end
