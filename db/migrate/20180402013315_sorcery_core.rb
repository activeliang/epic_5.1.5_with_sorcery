class SorceryCore < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :crypted_password
      t.string :salt
      t.string :phone
      t.boolean :is_admin, default: false
      t.timestamps                :null => false
    end

    add_index :users, :email, unique: true
  end
end
