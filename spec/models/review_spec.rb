require "rails_helper"

describe Review do
  describe "validations" do
    it "should have a body" do
      review = Review.new(score: 5)

      expect(review).to be_invalid
    end
    it "should have a score" do
      review = Review.new(body: "This is a body")

      expect(review).to be_invalid
    end
  end
  describe "relationsips" do
    it "belongs to a user" do
      review = Review.new(body: "This is a review", score: 5)

      expect(review).to respond_to(:user)
    end
    it "belongs to a book" do
      review = Review.new(body: "This is a review", score: 5)

      expect(review).to respond_to(:book)
    end
  end
end
