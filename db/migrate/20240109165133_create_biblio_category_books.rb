class CreateBiblioCategoryBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :biblio_category_books do |t|
      t.references :biblio_category, foreign_key: true, null: false, type: :bigint
      t.references :biblio_book, foreign_key: true, null: false, type: :bigint

      t.timestamps
    end
  end
end
