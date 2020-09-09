class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.text :title
      t.text :note
      t.date :due
      t.text :priority

      t.timestamps
    end
  end
end
