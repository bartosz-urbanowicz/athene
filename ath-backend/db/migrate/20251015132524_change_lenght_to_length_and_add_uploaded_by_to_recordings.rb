class ChangeLenghtToLengthAndAddUploadedByToRecordings < ActiveRecord::Migration[8.0]
  def change
    rename_column :recordings, :lenght, :length
    add_reference :recordings, :uploader, foreign_key: { to_table: :admin_users }
  end
end
