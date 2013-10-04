class Post < ActiveRecord::Base
	include Voteable

	belongs_to :user
	has_many :comments
	has_many :post_categories
	has_many :categories, through: :post_categories
	

	validates :title, :url, :description, presence: true

	after_validation :generate_slug

	def generate_slug
		self.slug = self.title.gsub(' ', "-").downcase
	end

	def to_param
		self.slug
	end
	
end