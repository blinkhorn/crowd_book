class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :genre
      t.string :soundcloud
      t.string :facebook
      t.references :user, null: false, index:true
      t.references :venue, null: false, index:true
      t.timestamps
    end
  end
end
