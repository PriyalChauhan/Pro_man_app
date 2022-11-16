require 'rails_helper'

RSpec.describe "DailyStatuses", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/daily_status/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/daily_status/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/daily_status/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/daily_status/show"
      expect(response).to have_http_status(:success)
    end
  end

end
