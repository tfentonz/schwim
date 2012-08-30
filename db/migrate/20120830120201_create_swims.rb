class CreateSwims < ActiveRecord::Migration
  def change
    create_table :swims do |t|
      t.date :swam_on
      t.integer :pool_id
      t.text :program
      t.decimal :kilometers, :precision => 4, :scale => 3
      t.integer :concession_card
      t.decimal :purchase, :precision => 5, :scale => 2

      t.timestamps
    end
  end
end
