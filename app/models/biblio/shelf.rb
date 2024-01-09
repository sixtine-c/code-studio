class Biblio::Shelf < ApplicationRecord
  belongs_to :user
  belongs_to :biblio_book, class_name: 'Biblio::Book', dependent: :destroy
end

# == Schema Information
#
# Table name: biblio_shelves
#
#  id             :bigint           not null, primary key
#  book_type      :string
#  comments       :text
#  language       :string
#  status         :string           not null
#  tags           :string           default([]), not null, is an Array
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  biblio_book_id :bigint           not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_biblio_shelves_on_biblio_book_id  (biblio_book_id)
#  index_biblio_shelves_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (biblio_book_id => biblio_books.id)
#  fk_rails_...  (user_id => users.id)
#
