require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      Author.create(name: "Dennis", genre: "Ye Old Music", bio: "A really good artist")
      get :show, params: {:id => 1}
      expect(response).to be_successful
    end
  end

end
