require 'rails_helper'

RSpec.describe "DiceRolls", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/dice_rolls/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/dice_rolls/create"
      expect(response).to have_http_status(:success)
    end
  end

end
