class AddTitleToCosplays < ActiveRecord::Migration[6.1]
  def change
    add_column :cosplays, :title, :string
  end
end
