class CreateBiblioShelves < ActiveRecord::Migration[7.1]
  def change
    create_table :biblio_shelves do |t|
      t.references :user, foreign_key: true, null: false, type: :bigint
      t.references :biblio_book, foreign_key: true, null: false, type: :bigint
      t.text :comments
      t.string :tags, array: true, null: false, default: []
      t.string :book_type
      t.string :status, null: false
      t.string :language

      t.timestamps
    end
  end
end
