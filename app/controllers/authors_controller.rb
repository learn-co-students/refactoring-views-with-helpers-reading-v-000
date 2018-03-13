class AuthorsController < ApplicationController
  def show
    if !params[:id].nil?
      @author = Author.find(params[:id])
    end
  end
end
