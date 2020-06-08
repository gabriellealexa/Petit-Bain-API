class CreateScopes < ActiveRecord::Migration[6.0]
  def change
    create_table :scopes do |t|
      t.string :title
      t.string :details

      t.timestamps
    end
  end
end
