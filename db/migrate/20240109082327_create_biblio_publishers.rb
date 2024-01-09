class CreateBiblioPublishers < ActiveRecord::Migration[7.1]
  def change
    create_table :biblio_publishers do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
