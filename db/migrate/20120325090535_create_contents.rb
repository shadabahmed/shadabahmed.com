class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :key
      t.string :title
      t.text :body

      t.timestamps
    end
    add_index 'contents', 'key'
  end
end
