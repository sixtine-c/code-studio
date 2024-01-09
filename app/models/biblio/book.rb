class Biblio::Book < ApplicationRecord
  validates :title, presence: true
end

# == Schema Information
#
# Table name: biblio_books
#
#  id             :bigint           not null, primary key
#  average_rating :integer
#  description    :text
#  id_authors     :integer          default([]), not null, is an Array
#  id_categories  :integer          default([]), not null, is an Array
#  id_publishers  :integer          default([]), not null, is an Array
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
