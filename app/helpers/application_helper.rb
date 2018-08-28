module ApplicationHelper
    def title(text)
        content_for :title, text
    end    

    # This title(text) method takes in a text-based argument and inserts the text into the :title (key) as a value. This is achieved via the content_for helper which takes in two arguments, the destination (:title), and the value (text).
    
    # In the layout/application.html.erb, specifically between the <title></title> tags, the text is inserted. This is because :title matches <title>.
    
    # The insertion is done via specifying <%= yield :title %> between the <title></title> tags, which will be replaced with the content_for text.
end
