class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :name, :limit => 35, :null => false
      t.string :city, :limit => 35, :null => false

      t.timestamps
    end
  end
end
