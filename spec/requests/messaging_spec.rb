require 'rails_helper'

RSpec.describe "Messagings", type: :request do
  describe "GET  user_messaging_index_path " do
    it "routes to #index" do
      expect( get: '/users/32/messaging').to("messaging#index", :format=>"json")   
  end
  end

  def new_user
    User.create(
    id:"",
    email: "valid@example.com",
    first_name: "jean",
    last_name: "elcaribou",
    description: "lzlsz szlszk zslsz,zlsz sklzsklsz",
    admin: false,
    description: "lzlsz szlszk zslsz,zlsz sklzsklsz",
    admin: false
  )
  end
end
