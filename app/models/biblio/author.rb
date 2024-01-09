class Biblio::Author < ApplicationRecord
  has_many :biblio_author_books
end

# == Schema Information
#
# Table name: biblio_authors
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
