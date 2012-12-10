class Student < ActiveRecord::Base
	belongs_to :faculty
	def picture_file= (p)
		if p
			self.picture_data = p.read
			self.content_type = p.content_type
		end
	end
end
