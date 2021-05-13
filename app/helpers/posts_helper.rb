module PostsHelper

  def last_updated(post)
    post.updated_at.strftime("Last updated %A %b %e, at %1:%M %P")
  end
  
end
