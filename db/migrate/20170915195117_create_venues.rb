class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.references :users, null: false, index:true
      t.references :requests, null: false, index:true
      t.timestamps
    end
  end
end
