require "rails_helper"

RSpec.describe Article, type: :model do
  describe "table" do
    it { is_expected.to have_db_column(:title) }
    it { is_expected.to have_db_column(:body) }
  end
end
