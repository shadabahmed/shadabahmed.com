class AddMarkdownTypeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :markdown_type, :string, :default => 'textile'
  end
end
