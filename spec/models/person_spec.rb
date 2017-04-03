require 'rails_helper'

RSpec.describe Person, type: :model do
  subject { Person.new(first_name: "juan", last_name: "perez", email: "juanperez@gmail.com", is_professor: false) }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without first_name" do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without last_name" do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end
end
