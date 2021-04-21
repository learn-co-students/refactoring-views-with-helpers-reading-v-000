class AuthorsController < ApplicationController
  def show
    # @author = Author.find(params[:id])
    @author = Author.find(1)
  end
end
