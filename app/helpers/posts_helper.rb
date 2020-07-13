module PostsHelper

	def last_updated(post)
  		post.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
	end

# Why are we passing post as an argument to the helper? Sometimes we're dealing with an instance variable (@post), 
# and sometimes we're dealing with a local variable (post). Our helper doesn't know anything that we don't directly 
# tell it, so it can't assume a specific variable name. We will need to tell it which post we want it to act on.

end
