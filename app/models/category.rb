class Category < ActiveRecord::Base
	extend FriendlyId
	  friendly_id :name, use: :slugged

	paginates_per 5
	
	belongs_to :user
	has_many :items

	validates :name, presence: true, length: {minimum:6, maximum:48}

end
