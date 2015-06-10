class Comment < ActiveRecord::Base

  belongs_to :listing , :class_name => "Listing", :foreign_key => "listing_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"

end
