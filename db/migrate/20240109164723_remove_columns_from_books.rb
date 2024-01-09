class RemoveColumnsFromBooks < ActiveRecord::Migration[7.1]
  def change
    remove_column :biblio_books, :id_authors, :integer
    remove_column :biblio_books, :id_categories, :integer
    remove_column :biblio_books, :id_publishers, :integer
  end
end
