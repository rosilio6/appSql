class CreateLeasons < ActiveRecord::Migration
  def change
    create_table :leasons do |t|
      t.string :class_name
      t.string :start
      t.string :end
      t.timestamps null: false
    end
  end
end
