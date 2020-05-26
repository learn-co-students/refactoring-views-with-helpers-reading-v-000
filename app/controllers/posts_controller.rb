class PostsController < ApplicationController
#Since we already know we're going to be repeating the same basic snippet of code across many views, we're going to jump right to creating a helper.
#check app/helpers/application_helper.rb
#and post_helper.rb	
	
	def index
		@posts = Post.all
	end

#Don't Repeat Yourself (DRY) opposite of wet,  "We Enjoy Typing" or "Write Everything Twice." 

=begin
<!-- app/views/posts/index.html.erb -->
	
	<% @posts.each do |post| %>
	<div>
		<%= post.title %> - <%= post.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p") %>
	</div>
	<% end %>
 
	Changed to

	<% @posts.each do |post| %>
	<div>
		<%= post.title %> - <%= last_updated post %>
	</div>
	<% end %>
=end


	def show
		@post = Post.find(params[:id])
	end

=begin
<!-- app/views/posts/show.html.erb -->
	We know our Post model has a timestamp field called updated_at, so we decide to display that.

	<h1><%= @post.title %></h1>
	<p><%= @post.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p") %></p>
	<p><%= @post.description %></p>

	DRY it up

	<h1><%= @post.title %></h1>
	<p><%= last_updated @post %></p>
	<p><%= @post.description %></p>

	Adding

	<!-- app/views/posts/show.html.erb -->
 
	<% title @post.title %>
	
	<h1><%= @post.title %></h1>
	<p><%= last_updated @post %></p>
	<p><%= @post.description %></p>

=end


	def new
		@post = Post.new
	end

	def create
	  @post = Post.new(params)
	  @post.save
	  redirect_to post_path(@post)
	end



	def update
	  @post = Post.find(params[:id])
	  @post.update(params.require(:post).permit(:title, :description))
	  redirect_to post_path(@post)
	end

	def edit
	  @post = Post.find(params[:id])
	end

=begin
<!-- app/views/posts/edit.html.erb -->
	<%= form_for(@post) do |f| %>
		<label><%= @post.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p") %></label><br>
		<label>Post title:</label><br>
		<%= f.text_field :title %><br>
	   
		<label>Post Description</label><br>
		<%= f.text_area :description %><br>
	   
		<%= f.submit %>
	  <% end %>

	  DRY to 

	
	<%= form_for(@post) do |f| %>
		<label><%= last_updated @post %></label><br>
		<label>Post title:</label><br>
		<%= f.text_field :title %><br>
		
		<label>Post Description</label><br>
		<%= f.text_area :description %><br>
	
	<%= f.submit %>
=end

end
