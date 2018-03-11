module PostsHelper

  def last_updated(post)
    post.updated_at.strftime("Last update %A, %b %e, at %l:%M %p")
  end

end
