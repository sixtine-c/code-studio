class CreateBiblioReadings < ActiveRecord::Migration[7.1]
  def change
    create_table :biblio_readings do |t|
      t.datetime :started_at
      t.datetime :finished_at
      t.references :biblio_shelf, foreign_key: true, null: false, type: :bigint

      t.timestamps
    end
  end
end
