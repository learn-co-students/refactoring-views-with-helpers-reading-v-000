require 'rails_helper'

describe 'navigate' do
  before do
    @post = Post.create(title: "My Post", description: "My post desc")
  end

  it 'shows the title on the show page in a h1 tag' do
    visit "/posts/#{@post.id}"
    expect(page).to have_css("h1", text: "My Post")
  end

  it 'to post pages' do
    visit "/posts/#{@post.id}"
    expect(page.status_code).to eq(200)
  end

  it 'shows the description on the show page in a p tag' do
    visit "/posts/#{@post.id}"
    expect(page).to have_css("p", text: "My post desc")
  end
end

describe 'form' do

  it 'shows an update form that submits content and redirects and prints out params' do
    @post = Post.create(title: "My Post", description: "My post desc")

    visit edit_post_path(@post)

    fill_in 'post[title]', with: "My Edit"
    fill_in 'post[description]', with: "My post description"

    click_on "Update Post"

    expect(page).to have_content("My Edit")
  end
end

describe "post" do
  it "has a post_status field" do
    @post = Post.create(title: "My Post", description: "My post desc", post_status: true)
    expect(@post.post_status).to eq(true)
  end
end

#Implemented my own test below
describe 'posts index page' do
  before do
    @post = Post.create(title: "My Post", description: "My post desc")
  end

  it "has last_updated method implemented" do
    visit "/posts"
    expect(page).to have_content("#{@post.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")}")
  end

end
