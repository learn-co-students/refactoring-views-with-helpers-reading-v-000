class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id]) if params[:id] != nil
  end
end
