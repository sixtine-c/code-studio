class Biblio::Book < ApplicationRecord
  has_many :biblio_shelves
  has_many :biblio_category_books
  has_many :biblio_author_books

  validates :title, presence: true
end

# == Schema Information
#
# Table name: biblio_books
#
#  id             :bigint           not null, primary key
#  average_rating :integer
#  description    :text
#  pages_count    :integer
#  preview_link   :string
#  published_date :datetime
#  ratings_count  :integer
#  thumbnail      :string
#  title          :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  google_api_id  :string
#
