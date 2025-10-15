class CreateSpecies < ActiveRecord::Migration[8.0]
  def change
    create_table :species do |t|
      t.string :name
      t.references :text_content, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.references :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
