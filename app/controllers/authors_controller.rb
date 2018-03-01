class AuthorsController < ApplicationController
  
  def index 
  	@authors = Author.all
  end	

  def show
    @author = Author.find_by(params[:id])
  end
  def new
  	Author.new
  end 

  private
  def post_params
	params.require(:author).permit(:name, :genre, :bio)
  end 

end
