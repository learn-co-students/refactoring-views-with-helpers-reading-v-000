module ApplicationHelper

	def title(text)
  		content_for :title, text
	end

# We use the Rails content_for helper within our custom helper here. 
# This will send our text to the place in our application layout that 
# is expecting some content for the :title.

end
