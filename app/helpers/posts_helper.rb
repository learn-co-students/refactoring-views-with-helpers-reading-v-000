module PostsHelper
    def last_updated(post)
        post.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
    end

    #this can be used for any controller because it's a helper
    #module is a library of methods
    #it's like a partial
    #it cuts down on looking for bugs
    #https://www.vikingcodeschool.com/professional-development-with-ruby/classes-vs-modules 
end
