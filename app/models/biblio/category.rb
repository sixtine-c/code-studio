class Biblio::Category < ApplicationRecord
  has_many :biblio_categories
end

# == Schema Information
#
# Table name: biblio_categories
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
