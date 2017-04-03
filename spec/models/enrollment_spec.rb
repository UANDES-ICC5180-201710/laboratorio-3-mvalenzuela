require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  describe "Associations" do
    it "belongs to course" do
      assc = described_class.reflect_on_association(:course)
      expect(assc.macro).to eq :belongs_to
    end

    it "belongs to person" do
      assc = described_class.reflect_on_association(:student)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
