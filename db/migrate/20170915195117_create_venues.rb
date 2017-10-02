class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.references :user, null: false, index:true
      t.references :request, null: true, index:true
      t.timestamps
    end
  end
end
