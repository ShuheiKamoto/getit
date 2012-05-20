class CreateTest10s < ActiveRecord::Migration
  def change
    create_table :test10s do |t|
      t.integer :no
      t.string :name

      t.timestamps
    end
  end
end
