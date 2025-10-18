class RenameTypeToCallTypeInCallType < ActiveRecord::Migration[8.0]
  def change
    rename_column :call_types, :type, :call_type
  end
end
