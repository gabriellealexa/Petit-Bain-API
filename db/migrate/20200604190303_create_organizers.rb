class CreateOrganizers < ActiveRecord::Migration[6.0]
  def change
    create_table :organizers do |t|
      t.string :title
      t.string :img
      t.string :about
      t.string :website
      t.string :email

      t.timestamps
    end
  end
end
