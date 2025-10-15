class CreateFacts < ActiveRecord::Migration[8.0]
  def change
    create_table :facts do |t|
      t.references :specie, null: false, foreign_key: true
      t.references :text_content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
