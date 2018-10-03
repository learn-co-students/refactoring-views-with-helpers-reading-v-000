module ApplicationHelper
    # dynamically change the title of each page based on what the page is about
    def title(text)
        content_for :title, text
    end
end
