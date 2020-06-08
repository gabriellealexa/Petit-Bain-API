class CreateResourceNeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :resource_needs do |t|
      t.integer :resource_id
      t.integer :need_id

      t.timestamps
    end
  end
end
