module AuthorsHelper
  def find_author
    @author = Author.find(params[:id])
  end
end
