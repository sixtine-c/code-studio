class Biblio::Reading < ApplicationRecord
  belongs_to :biblio_shelf, class_name: 'Biblio::Shelf'
end

# == Schema Information
#
# Table name: biblio_readings
#
#  id              :bigint           not null, primary key
#  finished_at     :datetime
#  started_at      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  biblio_shelf_id :bigint           not null
#
# Indexes
#
#  index_biblio_readings_on_biblio_shelf_id  (biblio_shelf_id)
#
# Foreign Keys
#
#  fk_rails_...  (biblio_shelf_id => biblio_shelves.id)
#
