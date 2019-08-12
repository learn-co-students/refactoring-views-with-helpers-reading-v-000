module ApplicationHelper
  def title(text)
    content_for :title, text
    #sends our text to the place in the application layout
    #that is expecting some content for :title
  end
end
