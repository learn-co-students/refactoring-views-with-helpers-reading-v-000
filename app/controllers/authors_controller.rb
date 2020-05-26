class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

=begin
<!-- app/views/authors/show.html.erb -->

  <h1><%= @author.name %></h1>
  <p>Posts:</p>
    <% @author.posts.each do |post| %>
      <div><%= post.title %> - <%= last_updated post %></div>
    <% end %>

    Changed to

    <!-- app/views/authors/show.html.erb -->
     
    <% title @author.name %>   
      <h1><%= @author.name %></h1>
      <p>Posts:</p>
    <% @author.posts.each do |post| %>
        <div><%= post.title %> - <%= last_updated post %></div>
    <% end %>
=end
end
