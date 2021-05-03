class CreateDesserts < ActiveRecord::Migration[6.0]
  def change
    create_table :desserts do |t|
      t.string :title
      t.text :content
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
