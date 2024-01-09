class Biblio::AuthorBook < ApplicationRecord
  belongs_to :biblio_author, class_name: 'Biblio::Author', dependent: :destroy
  belongs_to :biblio_book, class_name: 'Biblio::Book', dependent: :destroy
end

# == Schema Information
#
# Table name: biblio_author_books
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  biblio_author_id :bigint           not null
#  biblio_book_id   :bigint           not null
#
# Indexes
#
#  index_biblio_author_books_on_biblio_author_id  (biblio_author_id)
#  index_biblio_author_books_on_biblio_book_id    (biblio_book_id)
#
# Foreign Keys
#
#  fk_rails_...  (biblio_author_id => biblio_authors.id)
#  fk_rails_...  (biblio_book_id => biblio_books.id)
#
