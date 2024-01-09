class CreateBiblioAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :biblio_authors do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
