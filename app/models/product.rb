class Product < ActiveRecord::Base
  belongs_to :category
  validates :name, :presence => true
	
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
