require "rails_helper"

describe "user visits a books show page" do
  it "shows the average rating for a book" do
    user = User.create(name: "JK Rowling")
    user_2 = User.create(name: "Alex")
    book = Book.create(title: "One Piece")
    review_1 = user.reviews.create(body: "Alright", score: 3, book_id: book.id)
    review_2 = user_2.reviews.create(body: "Good", score: 5, book_id: book.id)

    visit book_path(book)

    expect(book.average_rating).to eq(4)
    expect(page).to have_content("Average Book Rating is: 4")
  end
  it "shows the highest rating for a book" do
    user = User.create(name: "JK Rowling")
    user_2 = User.create(name: "Alex")
    book = Book.create(title: "One Piece")
    review_1 = user.reviews.create(body: "Alright", score: 3, book_id: book.id)
    review_2 = user_2.reviews.create(body: "Good", score: 5, book_id: book.id)

    visit book_path(book)

    expect(book.highest_rating).to eq(5)
    expect(page).to have_content("Highest Rating: 5")
  end
  it "shows the lowest rating for a book" do
    user = User.create(name: "JK Rowling")
    user_2 = User.create(name: "Alex")
    book = Book.create(title: "One Piece")
    review_1 = user.reviews.create(body: "Alright", score: 3, book_id: book.id)
    review_2 = user_2.reviews.create(body: "Good", score: 5, book_id: book.id)

    visit book_path(book)

    expect(book.lowest_rating).to eq(3)
    expect(page).to have_content("Lowest Rating: 3")
  end
end
