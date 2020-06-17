class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :img
      t.string :details
      t.string :link
      t.integer :scope_id

      t.timestamps
    end
  end
end
