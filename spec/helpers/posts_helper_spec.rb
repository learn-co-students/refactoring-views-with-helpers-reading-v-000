require 'rails_helper'
#Created this file for my own test
describe PostsHelper do
  describe "last updated" do
    before do
      @post = Post.create(title: "My Post", description: "My post desc")
    end

    it "turns updated_at to a more readable time" do
      expect(helper.last_updated(@post)).to eq("#{@post.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")}")
    end
  end

end
