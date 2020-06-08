class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :summary
      t.string :date_published
      t.string :feat_img
      t.string :body

      t.timestamps
    end
  end
end
