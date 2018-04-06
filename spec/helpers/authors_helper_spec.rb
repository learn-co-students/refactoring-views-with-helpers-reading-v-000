require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the AuthorsHelper. For example:
#
# describe AuthorsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe AuthorsHelper, type: :helper do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "capitalizes all characters in the author's bio and displays the bio" do
    expect(bio_info(Author.create(bio: "Born in Bulgaria"))).to eq("BORN IN BULGARIA")
  end
end
