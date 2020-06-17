class CreateStarredOrganizers < ActiveRecord::Migration[6.0]
  def change
    create_table :starred_organizers do |t|
      t.integer :user_id
      t.integer :organizer_id

      t.timestamps
    end
  end
end
