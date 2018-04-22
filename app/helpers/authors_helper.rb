module AuthorsHelper
	def author_info
		"#{@author.name} #{@author.genre} #{@author.bio}"
	end
end
