require "rails_helper"

RSpec.describe Comment, type: :model do
  describe "table" do
    it { is_expected.to have_db_column(:body) }
    it { is_expected.to have_db_column(:status) }
    it { is_expected.to belong_to(:article) }
  end

  describe "validations" do
    it { is_expected.to validate_inclusion_of(:status).in_array(described_class::VALID_STATUSES) }
  end

  describe "#archived?" do
    context "when status is 'archived'" do
      subject { described_class.new(status: "archived") }

      it { is_expected.to be_archived }
    end

    context "when status is not 'archived'" do
      subject { described_class.new }

      it { is_expected.not_to be_archived }
    end
  end
end
