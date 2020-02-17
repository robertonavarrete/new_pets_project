require 'rails_helper'

RSpec.describe "Dewormings", type: :request do
  describe "GET /dewormings" do
    it "works! (now write some real specs)" do
      get dewormings_path
      expect(response).to have_http_status(200)
    end
  end
end
