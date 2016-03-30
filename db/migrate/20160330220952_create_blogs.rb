class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.date :date
      t.string :title
      t.text :post

      t.timestamps null: false
    end
  end
end
