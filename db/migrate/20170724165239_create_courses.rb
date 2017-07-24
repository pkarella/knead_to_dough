class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.column :title, :string
      t.column :name, :string
      t.column :location, :string
      t.column :cost, :float
      t.column :description, :string
      t.timestamps
    end
  end
end
