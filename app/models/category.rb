class Category < ActiveRecord::Base
	has_many :products

	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	
	validates :name, :presence => true
end
