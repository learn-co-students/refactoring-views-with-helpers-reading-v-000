module ApplicationHelper
  # This helper is created automatically with your Rails project and is where you keep helpers that are related to the application itself rather than any given model or controller.

  def title(text)
    # What this will do is send our text to the place in our application layout that is expecting some content for the :title.
    content_for :title, text
  end
end
