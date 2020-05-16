module ApplicationHelper
  def title(text)
    content_for :title, text #sends text to the place in the app layout that is expecting some contetnt for the :title
  end

end
