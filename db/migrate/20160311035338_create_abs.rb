class CreateAbs < ActiveRecord::Migration
  def change
    create_table :abs do |t|
      t.string :name
      t.string :mail

      t.timestamps null: false
    end
  end
end
