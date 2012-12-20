class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :fax
      t.string :mobile
      t.string :email
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :address4
      t.string :user_type

      t.timestamps
    end
  end
end
