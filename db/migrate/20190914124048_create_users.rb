class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ""
      t.text :uid, null: false, default: ""
      t.string :oauth_token, null: false, default: ""

      t.timestamps
    end
  end
end
