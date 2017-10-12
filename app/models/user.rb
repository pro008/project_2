class User < ApplicationRecord
	class << self
		def total_pages
			page_length = User.all.length
			if(page_length %10 >0)
				return (page_length /10) +1
			else
				return page_length /10
			end
		end
	end
	
end