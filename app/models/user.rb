class User < ActiveRecord::Base 
	has_many :tweets

	def slug 
		name.downcase.split(' ').join('-')
	end 

	def self.find_by_slug(slug) 
		self.all.find {|user| user.slug == slug}
	end
end
