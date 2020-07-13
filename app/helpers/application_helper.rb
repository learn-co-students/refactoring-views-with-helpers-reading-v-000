module ApplicationHelper
   
def last_updated(post)
  post.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
end

def title(text)
  content_for :title, text
end

end
