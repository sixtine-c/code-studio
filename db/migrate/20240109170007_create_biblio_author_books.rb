class CreateBiblioAuthorBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :biblio_author_books do |t|
      t.references :biblio_author, foreign_key: true, null: false, type: :bigint
      t.references :biblio_book, foreign_key: true, null: false, type: :bigint

      t.timestamps
    end
  end
end
