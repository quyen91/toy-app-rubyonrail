class CreateHehes < ActiveRecord::Migration
  def change
    create_table :hehes do |t|
      t.string :nana

      t.timestamps null: false
    end
  end
end
