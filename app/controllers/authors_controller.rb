class AuthorsController < ApplicationController
  def show
    @author = Author.find_or_create_by(params[:id])
  end
end
