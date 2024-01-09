class Biblio::CategoryBook < ApplicationRecord
  belongs_to :biblio_category, class_name: 'Biblio::Category', dependent: :destroy
  belongs_to :biblio_book, class_name: 'Biblio::Book', dependent: :destroy
end

# == Schema Information
#
# Table name: biblio_category_books
#
#  id                 :bigint           not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  biblio_book_id     :bigint           not null
#  biblio_category_id :bigint           not null
#
# Indexes
#
#  index_biblio_category_books_on_biblio_book_id      (biblio_book_id)
#  index_biblio_category_books_on_biblio_category_id  (biblio_category_id)
#
# Foreign Keys
#
#  fk_rails_...  (biblio_book_id => biblio_books.id)
#  fk_rails_...  (biblio_category_id => biblio_categories.id)
#
