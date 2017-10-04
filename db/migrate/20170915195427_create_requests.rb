class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :genre
      t.string :soundcloud # maybe rename to soundcloud_url in case you want to add a model Soundcloud (belonging to an artist) that might use the Soundcloud API to pull in an artists's most recent/popular tracks for embedding, likes, number of followers, etc.
      t.string :facebook # consider naming to facebook_url
      t.integer :number_votes
      t.references :user, null: false, index:true
      t.references :venue, null: false, index:true
      t.timestamps
    end
  end
end
