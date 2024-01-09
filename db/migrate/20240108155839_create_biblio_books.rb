class CreateBiblioBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :biblio_books do |t|
      t.string :title, null: false
      t.string :google_api_id
      t.text :description
      t.integer :pages_count
      t.string :thumbnail
      t.string :preview_link
      t.datetime :published_date
      t.integer :average_rating
      t.integer :ratings_count
      t.integer :id_authors, array: true, null: false, default: []
      t.integer :id_categories, array: true, null: false, default: []
      t.integer :id_publishers, array: true, null: false, default: []

      t.timestamps
    end
  end
end
