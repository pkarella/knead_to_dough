class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :author, :string
      t.column :comment, :string
      t.column :course_id, :integer
      t.timestamps
    end
  end
end
