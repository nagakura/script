class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :name
      t.integer :credit
      t.boolean :programming

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
