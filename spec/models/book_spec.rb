require "rails_helper"

describe Book do
  describe "validations" do
    it "should have a title" do
      book = Book.new

      expect(book).to be_invalid
    end
  end
  describe "relationships" do
    it "has many reviews" do
      book = Book.new(title: "Harry Potter")

      expect(book).to respond_to(:reviews)
    end
  end
end
