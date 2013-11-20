class PostItem < ActiveRecord::Base
	has_many :comments
	has_and_belongs_to_many :tags

	validates :title, presence: true
end
