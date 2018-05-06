module PostsHelper
  def last_updated(post)
    post.updated_at.strftime("last updated %A, %b %e, at %l:%M %p")
  end
end
