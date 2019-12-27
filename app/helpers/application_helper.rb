module ApplicationHelper
  def title(text)
    # if text
      content_for(:title) { text }
    # else
      # content_for :title, "BlogFlash"
    # end
  end
end
