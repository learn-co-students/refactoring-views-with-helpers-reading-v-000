require 'rails_helper'
if RUBY_VERSION>='2.6.0'
 if Rails.version < '5'
   class ActionController::TestResponse < ActionDispatch::TestResponse
     def recycle!
       # hack to avoid MonitorMixin double-initialize error:
       @mon_mutex_owner_object_id = nil
       @mon_mutex = nil
       initialize
     end
   end
 else
   puts 'Monkeypatch for ActionController::TestResponse no longer needed'
 end
end

RSpec.describe AuthorsController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      Author.create(name: "Dennis", genre: "Ye Old Music", bio: "A really good artist")
      get :show, {:id => 1}
      expect(response).to have_http_status(:success)
    end
  end

end
