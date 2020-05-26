module ApplicationHelper
  def title(text)
    content_for :tite, text
  end
end
