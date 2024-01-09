class CreateBiblioCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :biblio_categories do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
