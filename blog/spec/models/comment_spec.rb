require "rails_helper"

RSpec.describe Comment, type: :model do
  require "rails_helper"
  describe "table" do
    it { is_expected.to have_db_column(:body) }
    it { is_expected.to belong_to(:article) }
  end
end
