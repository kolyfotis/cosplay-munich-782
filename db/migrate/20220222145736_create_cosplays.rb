class CreateCosplays < ActiveRecord::Migration[6.1]
  def change
    create_table :cosplays do |t|
      t.float :price
      t.text :details
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
