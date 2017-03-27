require 'rails_helper'

RSpec.describe "Clips", type: :request do
  describe "GET /clips" do
    it "works! (now write some real specs)" do
      get clips_path
      expect(response).to have_http_status(200)
    end
  end
end
