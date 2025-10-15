class CreateSpeciesRarities < ActiveRecord::Migration[8.0]
  def change
    create_table :species_rarities do |t|
      t.references :country, null: false, foreign_key: true
      t.references :species, null: false, foreign_key: true
      t.string :rarity

      t.timestamps
    end
  end
end
