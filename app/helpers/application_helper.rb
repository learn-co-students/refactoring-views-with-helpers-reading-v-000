module ApplicationHelper
    def page_title(text)
        content_for :page_title, text
    end
end
