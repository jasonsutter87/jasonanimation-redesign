class CreateProjectEulers < ActiveRecord::Migration
  def change
    create_table :project_eulers do |t|
      t.date :date
      t.string :title
      t.text :post

      t.timestamps null: false
    end
  end
end
