# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
50.times do
  book = Biblio::Book.create(
  title: "toto",
  google_api_id: nil,
  description: "toto",
  pages_count: 345,
  thumbnail: "https://books.google.com/books/content?id=kRqBa2SY0mwC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
  preview_link: nil,
  published_date: Date.parse('30/10/2002'),
  average_rating: 4,
  ratings_count: 67,
  )

  Biblio::Shelf.create(
    user_id: 1,
    biblio_book_id: book.id,
    comments: 'à lire absolument',
    tags: [],
    book_type: nil,
    status: "to read",
    language: 'french'
  )
end
