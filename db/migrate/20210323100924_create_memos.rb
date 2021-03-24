class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string       :title,          null: false
      t.text         :memo
      t.integer      :category_id ,   null: false
      t.integer      :deadline_id,    null: false
      t.integer      :day_id,         null: false    
      t.timestamps
    end
  end
end
