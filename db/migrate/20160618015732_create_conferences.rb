class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.integer :yrFounded
      t.integer :totalMembers
      t.string :headquarters

      t.timestamps
    end
  end
end
