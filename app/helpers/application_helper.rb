module ApplicationHelper
  def title(text)
    # if text
      content_for(:title) { text }
    # else
      # content_for :title, "BlogFlash"
    # end
  end

  def display_title
    # content_for?(:title) ? content_for(:title) : "BlogFlash"
    # For this to work, I can't call the #title helper with title("BlogFlash").

    content_for(:title) || "BlogFlash" # This works, too! 
    # I can also just put this line ^^^ inside of the ERB tag in the <title>.
  end
end
