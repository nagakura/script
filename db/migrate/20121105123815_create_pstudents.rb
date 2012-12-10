class CreatePstudents < ActiveRecord::Migration
  def self.up
    create_table :pstudents do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :pstudents
  end
end
