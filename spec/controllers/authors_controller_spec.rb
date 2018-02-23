require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

describe 'create' do
  before do
    @author = Author.create(name: "Hemingway")
  end


  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end
end
end
