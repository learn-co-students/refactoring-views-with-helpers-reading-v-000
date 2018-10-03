module PostsHelper
    def last_updated(post)
        post.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
        # Tuesday, Oct 02, at 10:19
    end
end
