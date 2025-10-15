class CreateRecordings < ActiveRecord::Migration[8.0]
  def change
    create_table :recordings do |t|
      t.string :sound_url
      t.string :spectrogram_url
      t.integer :lenght
      t.string :quality
      t.text :comment
      t.text :attribution
      t.references :license, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
