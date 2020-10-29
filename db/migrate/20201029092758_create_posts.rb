class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :first_half_score,  null: false
      t.integer :second_half_score, null: false
      t.integer :total_score,       null: false
      t.string :golf_course,        null: false
      t.date :date,                 null: false
      t.timestamps
    end
  end
end
