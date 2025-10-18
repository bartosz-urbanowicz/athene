class CreateGenders < ActiveRecord::Migration[8.0]
  def change
    create_table :genders do |t|
      t.string :gender
      t.references :text_content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
