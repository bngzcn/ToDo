class Category < ActiveRecord::Base
	extend FriendlyId
	  friendly_id :name, use: :slugged

	paginates_per 2
	
	belongs_to :user
	has_many :items
end
