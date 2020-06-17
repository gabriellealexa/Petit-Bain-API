class CreateStarredResources < ActiveRecord::Migration[6.0]
  def change
    create_table :starred_resources do |t|
      t.integer :user_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
