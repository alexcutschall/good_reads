require "rails_helper"

describe User, type: :model do
  describe "validations" do
    it "is invalid without a name" do
    end
  end
  describe "relationships" do
    it "has many reviews" do
      user = User.new(name: "Harry Potter")

      expect(user).to respond_to(:reviews)
    end
  end
end
