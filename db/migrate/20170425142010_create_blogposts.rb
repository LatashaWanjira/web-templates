class CreateBlogposts < ActiveRecord::Migration[5.0]
  def change
    create_table :blogposts do |t|
      t.string :blog_title
      t.string :body

      t.timestamps
    end
  end
end
