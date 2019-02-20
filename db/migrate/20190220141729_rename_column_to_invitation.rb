class RenameColumnToInvitation < ActiveRecord::Migration[5.2]
  def change
      rename_column :invitations, :recepient_id, :recipient_id
  end
end
