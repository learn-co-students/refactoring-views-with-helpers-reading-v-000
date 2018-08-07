module AuthorsHelper
  def created_at(author)
    author.created_at.strftime("Created %A, %b %e, at %l:%M %p")
  end
end
