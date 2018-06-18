class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
		# raise params.inspect
	  @author = Author.new(params[:author])
	  @author.save
	  redirect_to author_path(@author)
	end
end
