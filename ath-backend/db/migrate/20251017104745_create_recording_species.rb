class CreateRecordingSpecies < ActiveRecord::Migration[8.0]
  def change
    create_table :recording_species do |t|
      t.references :recording, null: false, foreign_key: true
      t.references :species, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
