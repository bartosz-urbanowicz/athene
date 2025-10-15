class CreateTextContents < ActiveRecord::Migration[8.0]
  def change
    create_table :text_contents do |t|
      t.text :original_text
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
