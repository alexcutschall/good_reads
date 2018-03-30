require "rails_helper"

describe "user visits a books show page" do
  it "shows the books information" do
    user = User.create(name: "JK Rowling")
    user_2 = User.create(name: "Alex")
    book = Book.create(title: "One Piece")
    review_1 = user.reviews.create(body: "Alright", score: 3, book_id: book.id)
    review_2 = user_2.reviews.create(body: "Good", score: 4, book_id: book.id)

    visit book_path(book)

    expect(page).to have_content(user.name)
    expect(page).to have_content(user_2.name)
    expect(page).to have_content(book.title)
    expect(page).to have_content(review_1.body)
    expect(page).to have_content(review_1.score)
    expect(page).to have_content(review_2.body)
    expect(page).to have_content(review_2.score)

  end
  it "shows the information for highest rating" do
      user = User.create(name: "JK Rowling")
      user_2 = User.create(name: "Alex")
      user_3 = User.create(name: "Tyler")
      book = Book.create(title: "One Piece")
      review_1 = user.reviews.create(body: "Alright", score: 3, book_id: book.id)
      review_2 = user_2.reviews.create(body: "Good", score: 4, book_id: book.id)
      review_3 = user_3.reviews.create(body: "Good", score: 5, book_id: book.id)

      visit book_path(book)

      expect(page).to have_content(user_3.name)
      expect(page).to have_content(review_3.body)
  end
end
