class AddGenderAgeAndCallTypeToRecordings < ActiveRecord::Migration[8.0]
  def change
    add_reference :recordings, :gender, foreign_key: { to_table: :genders }
    add_reference :recordings, :age, foreign_key: { to_table: :ages }
    add_reference :recordings, :call_type, foreign_key: { to_table: :call_types }
  end
end
