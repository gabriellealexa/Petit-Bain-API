class CreateOrganizerResources < ActiveRecord::Migration[6.0]
  def change
    create_table :organizer_resources do |t|
      t.integer :organizer_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
