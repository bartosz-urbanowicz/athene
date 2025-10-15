class CreateTranslations < ActiveRecord::Migration[8.0]
  def change
    create_table :translations do |t|
      t.text :translated_text
      t.references :text_content, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
