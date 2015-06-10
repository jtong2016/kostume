class Category < ActiveRecord::Base

 validates_uniqueness_of :category, :case_sensitive => false
  has_many :listings , :class_name => "Listing", :foreign_key => "category_id"


end
