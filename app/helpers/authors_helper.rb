module AuthorsHelper

  def bio_info(author)
    author.bio.upcase
  end
end
