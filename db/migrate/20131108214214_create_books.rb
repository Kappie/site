class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :rating
      t.string :isbn
      t.text :review
      t.text :abstract

      t.timestamps
    end
  end
end
