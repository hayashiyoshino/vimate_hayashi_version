class CreateVimrcs < ActiveRecord::Migration[5.2]
  def change
    create_table :vimrcs do |t|

      t.timestamps
    end
  end
end
