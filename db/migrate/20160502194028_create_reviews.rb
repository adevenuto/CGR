class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
        t.text :review
        t.string :rating
        t.integer :user_id
        t.integer :course_id
      t.timestamps
    end
    add_index :reviews, [:user_id, :course_id]
    add_index :reviews, :course_id
  end
end
