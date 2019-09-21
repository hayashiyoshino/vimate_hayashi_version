require 'rails_helper'

RSpec.describe "Vimrcs", type: :request do
  describe "GET /vimrcs" do
    it "works! (now write some real specs)" do
      get vimrcs_path
      expect(response).to have_http_status(200)
    end
  end
end
