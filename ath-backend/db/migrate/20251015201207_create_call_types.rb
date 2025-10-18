class CreateCallTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :call_types do |t|
      t.string :type
      t.references :text_content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
