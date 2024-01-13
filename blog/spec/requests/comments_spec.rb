require "rails_helper"

RSpec.describe "Comments", type: :request do
  describe "GET /comments" do
    context "when the article it not present" do
      subject { response }

      before { get "/articles/1/comments" }

      it { is_expected.to have_http_status(:not_found) }
    end
  end
end
