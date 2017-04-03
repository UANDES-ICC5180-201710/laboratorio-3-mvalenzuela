require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "Associations" do
    it "belongs to teacher" do
      assc = described_class.reflect_on_association(:teacher)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
