class CreateLicenses < ActiveRecord::Migration[8.0]
  def change
    create_table :licenses do |t|
      t.string :name
      t.string :code
      t.text :url
      t.boolean :requires_attribution

      t.timestamps
    end
  end
end
