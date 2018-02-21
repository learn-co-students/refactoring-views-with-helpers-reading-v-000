class AuthorsController < ApplicationController
  def show
    binding.pry
    @author = Author.find_or_create_by(params[:id])
  end
end
