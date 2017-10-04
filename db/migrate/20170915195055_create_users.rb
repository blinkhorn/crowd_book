class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    # I would use devise for users. Since people tend to use the same passwords
    # over and over again (so they don't have to memorize lots of passwords)
    # there may end up storing the passwords they use for everything else in
    # your pg database. I might use devise for that
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
