class AddImageColumnToCourses < ActiveRecord::Migration[5.1]
  def self.up
  change_table :courses do |t|
    t.attachment :image
  end
end

def self.down
  drop_attached_file :courses, :image
end
end
