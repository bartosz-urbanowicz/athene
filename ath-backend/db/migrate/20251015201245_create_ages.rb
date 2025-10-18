class CreateAges < ActiveRecord::Migration[8.0]
  def change
    create_table :ages do |t|
      t.string :age
      t.references :text_content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
