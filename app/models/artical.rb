class Artical < ActiveRecord::Base
	def self.search(search)
		where('(title ILIKE ? or body ILIKE ?)', "%#{search}%" , "%#{search}%")
	  # where("title ILIKE ?", "%#{search}%")|| 
	  # where("body ILIKE ?", "%#{search}%")
	end
end
