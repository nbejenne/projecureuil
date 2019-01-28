class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.boolean :admin
      t.references :user, foreign_key: true
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end