class Item < ActiveRecord::Base
	belongs_to :user
	belongs_to :category

	validates :content, presence: true, length: {minimum:6, maximum:48}
end
