module AuthorsHelper
  def last_active(author)
    author.post.updated_at.strftime("Last Active %A, %b %e, at %l:%M %p")
  end
end
