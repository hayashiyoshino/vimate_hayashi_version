class CreateVimrcs < ActiveRecord::Migration[5.2]
  def change
    create_table :vimrcs do |t|
      t.text :image_url, null: false
      t.text :description
      t.timestamps
    end
  end
end
