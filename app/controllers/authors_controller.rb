class AuthorsController < ApplicationController
  def show
    @author = Author.last
  end
end
