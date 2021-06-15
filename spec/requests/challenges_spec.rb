require 'rails_helper'

RSpec.describe "Challenges", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/challenges/index"
      expect(response).to have_http_status(:success)
    end
  end

end
