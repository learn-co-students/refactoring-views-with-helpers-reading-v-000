module PostsHelper

    def last_updated(post)
        post.updated_at.strftime("%A, %b %e, at %I=I:%M %p")
      end

end
