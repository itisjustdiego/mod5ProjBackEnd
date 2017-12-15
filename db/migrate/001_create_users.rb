class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :zipcode
      t.string :main_character
      t.string :skill
    end
  end
end
