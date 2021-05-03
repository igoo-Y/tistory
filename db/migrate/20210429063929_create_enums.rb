class CreateEnums < ActiveRecord::Migration[6.0]
  def change
    create_table :enums do |t|
      t.string :title
      t.text :content
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
