class AddColumnsToInvitation < ActiveRecord::Migration[5.2]
  def change
    add_column :invitations, :sender_id, :integer
    add_column :invitations, :recepient_id, :integer
    add_column :invitations, :token, :string
  end
end
